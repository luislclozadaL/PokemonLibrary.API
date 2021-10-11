using AutoMapper;
using JQ.PokemonLibrary.Core.Model;
using JQ.PokemonLibrary.Core.Repositories;
using JQ.PokemonLibrary.Core.Services;
using JQ.PokemonLibrary.SharedKernel.Extensions;
using Moq;
using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.Service.UnitTests
{
    public class PokemonLibraryServiceTests_Stats
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

        #region Add Pokemon

        [Test]
        public void AddPokemon_ReturnSuccessMessage()
        {
            var pokemon = getCommonPokemon();   
            _libraryRepositoryMock.Setup(item => item.AddAsync()).Verifiable();
            
            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.AddPokemon(pokemon).Result;
           
            Assert.IsTrue(bServiceResult.Message == "Pokemon Created Successfully");
            Assert.IsTrue(bServiceResult.Successfull == true);
        }

        [Test]
        public void AddIncompletePokemonWith0HP_ReturnUnsuccessfullResultAndMessage()
        {
            var pokemon = new Pokemon
            {
                Name = "Test Pokemon",
                Type1 = 1,
                Type2 = 2,
                HP = 0,
                Attack = 5,
                Defense = 5,
                SpecialMoveAttack = 100,
                SpecialMoveDefense = 100,
                Speed = 100,
                Generation = 5,
                Legendary = true
            };

            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.AddPokemon(pokemon).Result;

            Assert.IsTrue(bServiceResult.Message == "Pokemon stats must not be 0");
            Assert.IsTrue(bServiceResult.Successfull == false);
        }

        [Test]
        public void AddIncompletePokemonWith0Attack_ReturnUnsuccessfullResultAndMessage()
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
                Generation = 5,
                Legendary = true
            };

            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.AddPokemon(pokemon).Result;

            Assert.IsTrue(bServiceResult.Message == "Pokemon stats must not be 0");
            Assert.IsTrue(bServiceResult.Successfull == false);
        }

        [Test]
        public void AddIncompletePokemonWith0Defense_ReturnUnsuccessfullResultAndMessage()
        {
            var pokemon = new Pokemon
            {
                Name = "Test Pokemon",
                Type1 = 1,
                Type2 = 2,
                HP = 1,
                Attack = 1,
                Defense = 0,
                SpecialMoveAttack = 100,
                SpecialMoveDefense = 100,
                Speed = 100,
                Generation = 5,
                Legendary = true
            };

            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.AddPokemon(pokemon).Result;

            Assert.IsTrue(bServiceResult.Message == "Pokemon stats must not be 0");
            Assert.IsTrue(bServiceResult.Successfull == false);
        }

        [Test]
        public void AddIncompletePokemonWith0SpecialMoveDefense_ReturnUnsuccessfullResultAndMessage()
        {
            var pokemon = new Pokemon
            {
                Name = "Test Pokemon",
                Type1 = 1,
                Type2 = 2,
                HP = 1,
                Attack = 1,
                Defense = 1,
                SpecialMoveAttack = 100,
                SpecialMoveDefense = 0,
                Speed = 100,
                Generation = 5,
                Legendary = true
            };

            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.AddPokemon(pokemon).Result;

            Assert.IsTrue(bServiceResult.Message == "Pokemon stats must not be 0");
            Assert.IsTrue(bServiceResult.Successfull == false);
        }

        [Test]
        public void AddIncompletePokemonWith0SpecialMoveAttack_ReturnUnsuccessfullResultAndMessage()
        {
            var pokemon = new Pokemon
            {
                Name = "Test Pokemon",
                Type1 = 1,
                Type2 = 2,
                HP = 1,
                Attack = 1,
                Defense = 1,
                SpecialMoveAttack = 0,
                SpecialMoveDefense = 100,
                Speed = 100,
                Generation = 5,
                Legendary = true
            };

            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.AddPokemon(pokemon).Result;

            Assert.IsTrue(bServiceResult.Message == "Pokemon stats must not be 0");
            Assert.IsTrue(bServiceResult.Successfull == false);
        }

        #endregion

        #region Update Pokemon

        [Test]
        public void UpdatePokemon_ReturnSuccessMessage()
        {
            var pokemon = getCommonPokemon();
            pokemon.Id = Guid.NewGuid();
            _libraryRepositoryMock.Setup(item => item.UpdateAsync()).Verifiable();
            _libraryRepositoryMock.Setup(item => item.GetSingleAsync(It.IsAny<Func<Pokemon, bool>>(), It.IsAny<string[]>())).Returns(Task.FromResult(pokemon));

            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.UpdatePokemon(pokemon).Result;

            Assert.IsTrue(bServiceResult.Message == "Pokemon Updated Successfully");
            Assert.IsTrue(bServiceResult.Successfull == true);
        }

        [Test]
        public void UpdateIncompletePokemonWith0HP_ReturnUnsuccessfullResultAndMessage()
        {
            var pokemon = new Pokemon
            {
                Name = "Test Pokemon",
                Type1 = 1,
                Type2 = 2,
                HP = 0,
                Attack = 5,
                Defense = 5,
                SpecialMoveAttack = 100,
                SpecialMoveDefense = 100,
                Speed = 100,
                Generation = 5,
                Legendary = true
            };

            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.UpdatePokemon(pokemon).Result;

            Assert.IsTrue(bServiceResult.Message == "Pokemon stats must not be 0");
            Assert.IsTrue(bServiceResult.Successfull == false);
        }

        [Test]
        public void UpdateIncompletePokemonWith0Attack_ReturnUnsuccessfullResultAndMessage()
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
                Generation = 5,
                Legendary = true
            };

            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.UpdatePokemon(pokemon).Result;

            Assert.IsTrue(bServiceResult.Message == "Pokemon stats must not be 0");
            Assert.IsTrue(bServiceResult.Successfull == false);
        }

        [Test]
        public void UpdateIncompletePokemonWith0Defense_ReturnUnsuccessfullResultAndMessage()
        {
            var pokemon = new Pokemon
            {
                Name = "Test Pokemon",
                Type1 = 1,
                Type2 = 2,
                HP = 1,
                Attack = 1,
                Defense = 0,
                SpecialMoveAttack = 100,
                SpecialMoveDefense = 100,
                Speed = 100,
                Generation = 5,
                Legendary = true
            };

            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.UpdatePokemon(pokemon).Result;

            Assert.IsTrue(bServiceResult.Message == "Pokemon stats must not be 0");
            Assert.IsTrue(bServiceResult.Successfull == false);
        }

        [Test]
        public void UpdateIncompletePokemonWith0SpecialMoveDefense_ReturnUnsuccessfullResultAndMessage()
        {
            var pokemon = new Pokemon
            {
                Name = "Test Pokemon",
                Type1 = 1,
                Type2 = 2,
                HP = 1,
                Attack = 1,
                Defense = 1,
                SpecialMoveAttack = 100,
                SpecialMoveDefense = 0,
                Speed = 100,
                Generation = 5,
                Legendary = true
            };

            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.UpdatePokemon(pokemon).Result;

            Assert.IsTrue(bServiceResult.Message == "Pokemon stats must not be 0");
            Assert.IsTrue(bServiceResult.Successfull == false);
        }

        [Test]
        public void UpdateIncompletePokemonWith0SpecialMoveAttack_ReturnUnsuccessfullResultAndMessage()
        {
            var pokemon = new Pokemon
            {
                Name = "Test Pokemon",
                Type1 = 1,
                Type2 = 2,
                HP = 1,
                Attack = 1,
                Defense = 1,
                SpecialMoveAttack = 0,
                SpecialMoveDefense = 100,
                Speed = 100,
                Generation = 5,
                Legendary = true
            };

            var service = new PokemonLibraryService(_libraryRepositoryMock.Object, _mapper);
            var bServiceResult = service.UpdatePokemon(pokemon).Result;

            Assert.IsTrue(bServiceResult.Message == "Pokemon stats must not be 0");
            Assert.IsTrue(bServiceResult.Successfull == false);
        }

        #endregion

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