using AutoMapper;
using JQ.PokemonLibrary.Core.Model;
using JQ.PokemonLibrary.Core.Repositories;
using JQ.PokemonLibrary.Core.Services;
using JQ.PokemonLibrary.Data.Repositories;
using JQ.PokemonLibrary.SharedKernel.Core;
using Moq;
using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.Service.UnitTests
{
    public class PokemonLibraryServiceTests_Querys
    {
        private List<Pokemon> _listOfPokemons;
        private Mock<IPokemonLibraryRepository> _libraryRepositoryMock;
        private IMapper _mapper;

        [SetUp]
        public void Setup()
        {
            SetupAutomapper();
            SetupLocalObjects();
            SetupMocks();            
        }

        #region Setup

        public void SetupAutomapper()
        {
            var mapperConfiguration = new MapperConfiguration(cfg => cfg.CreateMap<Pokemon, Pokemon>());
            _mapper = new Mapper(mapperConfiguration);
        }

        public void SetupLocalObjects()
        {
            _listOfPokemons = new List<Pokemon>();
        }

        public void SetupMocks()
        {
            _libraryRepositoryMock = new Mock<IPokemonLibraryRepository>();
        }

        #endregion

        [Test]
        public void QueryPokemonById_ReturnSuccessMessageAndASinglePokemon()
        {
            var pokemon = getCommonPokemon();
            _libraryRepositoryMock.Setup(item => item.GetListAsync(It.IsAny<Func<Pokemon, bool>>(), It.IsAny<IQueryOptions<Pokemon>>(), It.IsAny<string[]>())).Returns(Task.FromResult(new List<Pokemon> { pokemon }));
            
            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.GetPokemonById(pokemon.Id).Result;
           
            Assert.IsTrue(bServiceResult.Pokemon.Equals(pokemon));
            Assert.IsTrue(bServiceResult.Successfull == true);
        }

        [Test]
        public void QueryPokemonByNumber_ReturnSuccessMessageAndAListOfPokemons()
        {
            var p1 = new Pokemon{ Name = "Test Pokemon", Number = 3, Type1 = 1, Type2 = 2,  HP = 5, Attack = 5,Defense = 5,SpecialMoveAttack = 100,SpecialMoveDefense = 100,Speed = 100,Generation = 5,Legendary = true};
            var p2 = new Pokemon { Name = "Test Pokemon 2", Number = 3, Type1 = 3, Type2 = 4, HP = 5, Attack = 5, Defense = 5, SpecialMoveAttack = 100, SpecialMoveDefense = 100, Speed = 100, Generation = 5, Legendary = false };
            var p3 = new Pokemon { Name = "Test Pokemon 3", Number = 4, Type1 = 3, Type2 = 4, HP = 5, Attack = 5, Defense = 5, SpecialMoveAttack = 100, SpecialMoveDefense = 100, Speed = 100, Generation = 5, Legendary = false };

            _libraryRepositoryMock.Setup(item => item.GetListAsync(It.IsAny<Func<Pokemon, bool>>(), It.IsAny<IQueryOptions<Pokemon>>(), It.IsAny<string[]>())).Returns(Task.FromResult(new List<Pokemon> { p1, p2 }));

            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.GetPokemonByNumber(3).Result;

            Assert.IsTrue(bServiceResult.Pokemons.Count == 2);
            Assert.IsTrue(bServiceResult.Pokemons[0].Number == 3 && bServiceResult.Pokemons[0].Number == 3);
            Assert.IsTrue(bServiceResult.Successfull == true);
        }

        [Test]
        public void QueryPokemonPaginated_ReturnSuccessMessageAndAListOf10OfSecondPageOrderedByNumberAsc()
        {
            var service = new PokemonLibraryService(new PokemonLibraryRepository(), _mapper);
            var bServiceResult = service.GetPokemons(20, 10).Result;

            Assert.IsTrue(bServiceResult.Pokemons.Count == 10);
            Assert.IsTrue(bServiceResult.Pokemons[0].Number == 16);
            Assert.IsTrue(bServiceResult.Successfull == true);
        }

        [Test]
        public void QueryPokemonPaginatedOutsideBoundaryOfREcords_ReturnSuccessMessage()
        {
            var service = new PokemonLibraryService(new PokemonLibraryRepository(), _mapper);
            var bServiceResult = service.GetPokemons(800, 10).Result;
            Assert.IsTrue(bServiceResult.Successfull == true);
        }

        [Test]
        public void AddIncompletePokemonWithType1As0_ReturnUnsuccessfullResultAndMessage()
        {
            var pokemon = new Pokemon
            {
                Name = "Test Pokemon",
                Type1 = 0,
                Type2 = null,
                HP = 1,
                Attack = 0,
                Defense = 5,
                SpecialMoveAttack = 100,
                SpecialMoveDefense = 100,
                Speed = 100,
                Generation = 8,
                Legendary = true
            };
            _libraryRepositoryMock.Setup(item => item.Add()).Verifiable();

            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.AddPokemon(pokemon).Result;

            Assert.IsTrue(bServiceResult.Message == "Pokemon Generation must not be 0 and we are currently finding the 7th one");
            Assert.IsTrue(bServiceResult.Successfull == false);
        }

        [Test]
        public void AddIncompletePokemonWith8Generation_ReturnUnsuccessfullResultAndMessage()
        {
            var pokemon = new Pokemon
            {
                Name = "Test Pokemon",
                Type1 = 1,
                Type2 = 2,
                HP = 1,
                Attack = 0,
                Defense = 5,
                SpecialMoveAttack = 100,
                SpecialMoveDefense = 100,
                Speed = 100,
                Generation = 8,
                Legendary = true
            };
            _libraryRepositoryMock.Setup(item => item.Add()).Verifiable();

            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.AddPokemon(pokemon).Result;

            Assert.IsTrue(bServiceResult.Message == "Pokemon Generation must not be 0 and we are currently finding the 7th one");
            Assert.IsTrue(bServiceResult.Successfull == false);
        }

        private Pokemon getCommonPokemon()
        {
            return new Pokemon
            {
                Name = "Test Pokemon",
                Type1 = 1,
                Type2 = 2,
                HP = 5,
                Attack = 5,
                Defense = 5,
                SpecialMoveAttack = 100,
                SpecialMoveDefense = 100,
                Speed = 100,
                Generation = 5,
                Legendary = true
            };
        }
    }
}