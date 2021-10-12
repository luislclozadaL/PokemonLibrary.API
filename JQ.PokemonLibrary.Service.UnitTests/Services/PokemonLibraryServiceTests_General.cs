using AutoMapper;
using JQ.PokemonLibrary.Core.Model;
using JQ.PokemonLibrary.Core.Repositories;
using JQ.PokemonLibrary.Core.Services;
using Moq;
using NUnit.Framework;
using System.Collections.Generic;

namespace JQ.PokemonLibrary.Service.UnitTests
{
    public class PokemonLibraryServiceTests_General
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
        public void AddPokemon_ReturnSuccessMessage()
        {
            var pokemon = getCommonPokemon();   
            _libraryRepositoryMock.Setup(item => item.Add()).Verifiable();
            
            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.AddPokemon(pokemon).Result;
           
            Assert.IsTrue(bServiceResult.Message == "Pokemon Created Successfully");
            Assert.IsTrue(bServiceResult.Successfull == true);
        }

        [Test]
        public void AddPokemonTotalMustBeSumOfStats_ReturnSuccessMessage()
        {
            var pokemon = getCommonPokemon();
            _libraryRepositoryMock.Setup(item => item.Add()).Verifiable();

            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.AddPokemon(pokemon).Result;

            Assert.IsTrue(pokemon.Total == (pokemon.Defense + pokemon.Attack + pokemon.HP + pokemon.SpecialMoveAttack + pokemon.SpecialMoveDefense + pokemon.Speed));
            Assert.IsTrue(bServiceResult.Message == "Pokemon Created Successfully");
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