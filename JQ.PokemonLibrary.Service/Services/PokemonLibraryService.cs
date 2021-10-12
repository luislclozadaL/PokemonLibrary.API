using AutoMapper;
using JQ.PokemonLibrary.Core.DTOs;
using JQ.PokemonLibrary.Core.Model;
using JQ.PokemonLibrary.Core.Model.Validations;
using JQ.PokemonLibrary.Core.Repositories;
using JQ.PokemonLibrary.Core.Services;
using JQ.PokemonLibrary.SharedKernel.Base;
using JQ.PokemonLibrary.SharedKernel.Core;
using JQ.PokemonLibrary.SharedKernel.Extensions;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.Service
{
    public class PokemonLibraryService : IPokemonLibraryService
    {
        private IPokemonLibraryRepository _pokemonRepository;
        private IMapper _mapper;

        public PokemonLibraryService(IPokemonLibraryRepository pokemonRepository, IMapper mapper)
        {
            _pokemonRepository = pokemonRepository;
            _mapper = mapper;
        }

        public async Task<BaseServiceResponse> AddPokemon(Pokemon pokemon)
        {
            var baseResponse = new BaseServiceResponse() {
                Message = "Pokemon Created Successfully",
                Successfull = true
            };
            var commonValidations = CommonValidations(pokemon);
            if (!String.IsNullOrEmpty(commonValidations.Message))
            {
                baseResponse.Message = commonValidations.Message;
                baseResponse.Successfull = commonValidations.Successfull;
                return baseResponse;
            }
            var currentNumber = await _pokemonRepository.GetMaxPokemonNumber();
            pokemon.Number = currentNumber + 1;
            pokemon.CalculateTotalPower();

            pokemon.EntityState = SharedKernel.Core.EntityState.Added;
            await _pokemonRepository.AddAsync(pokemon);
            return baseResponse;
        }

        public async Task<DeletePokemonServiceResponse> DeletePokemon(Guid pokemonId)
        {
            var response = new DeletePokemonServiceResponse()
            {
                Message = "Pokemon Deleted Successfully",
                Successfull = true
            };
            var existingPokemon = await _pokemonRepository.GetSingleAsync(item => item.Id == pokemonId);
            if (existingPokemon == null)
            {
                response.Message = "Pokemon with Id: " + pokemonId.ToString() + " doesn't exist";
                response.Exists = false;
                return response;
            }

            existingPokemon.EntityState = EntityState.Deleted;
            await _pokemonRepository.RemoveAsync(existingPokemon);
            return response;
        }

        public async Task<NumberOfPokemonsServiceResponse> GetNumberOfPokemons()
        {
            var serviceResponse = new NumberOfPokemonsServiceResponse() { Successfull = true };
            serviceResponse.NumberOfPokemons = await _pokemonRepository.GetMaxPokemonNumber();
            return serviceResponse;
        }

        public async Task<PokemonServiceResponse> GetPokemonById(Guid pokemonId)
        {
            var serviceResponse = new PokemonServiceResponse() { Successfull = true };
            serviceResponse.Pokemon = (await _pokemonRepository.GetListAsync(item => item.Id == pokemonId, null, "PokemonType1", "PokemonType2")).FirstOrDefault();
            return serviceResponse;
        }

        public async Task<PokemonListServiceResponse> GetPokemonByNumber(int pokemonNumber)
        {
            var serviceResponse = new PokemonListServiceResponse() { Successfull = true };
            serviceResponse.Pokemons = await _pokemonRepository.GetListAsync(item => item.Number == pokemonNumber, null, "PokemonType1", "PokemonType2");
            return serviceResponse;
        }

        public async Task<PokemonListServiceResponse> GetPokemons(int? skip, int? take)
        {
            var serviceResponse = new PokemonListServiceResponse() { Successfull = true };
            serviceResponse.Pokemons = await _pokemonRepository.GetAllAsync(new BaseQueryOptions<Pokemon> { Skip = skip, Take = take, OrderByAsc = item => item.Number }, "PokemonType1", "PokemonType2");
            return serviceResponse;
        }

        public async Task<PokemonListServiceResponse> GetPokemons(string name, int? type1, int? type2, int? skip, int? take)
        {
            var serviceResponse = new PokemonListServiceResponse() { Successfull = true };
            serviceResponse.Pokemons = await _pokemonRepository.GetPokemonSearch(name, type1, type2, skip, take);
            return serviceResponse;
        }

        public async Task<PokemonListServiceResponse> GetPokemonsByCategory(int Category, int? skip, int? take)
        {
            var serviceResponse = new PokemonListServiceResponse() { Successfull = true };
            serviceResponse.Pokemons = await _pokemonRepository.GetListAsync(item => item.Type1 == Category || item.Type2 == Category , new BaseQueryOptions<Pokemon> { Skip = skip, Take = take, OrderByAsc = item => item.Number }, null);
            return serviceResponse;
        }

        public async Task<BaseServiceResponse> UpdatePokemon(Pokemon pokemon)
        {
            var baseResponse = new BaseServiceResponse()
            {
                Message = "Pokemon Updated Successfully",
                Successfull = true
            };
            var commonValidations = CommonValidations(pokemon);
            if (!String.IsNullOrEmpty(commonValidations.Message))
            {
                baseResponse.Message = commonValidations.Message;
                baseResponse.Successfull = commonValidations.Successfull;
                return baseResponse;
            }

            var dbPokemonEntity = await _pokemonRepository.GetSingleAsync(item => item.Id == pokemon.Id);
            pokemon.Number = dbPokemonEntity.Number;
            dbPokemonEntity = _mapper.Map(pokemon, dbPokemonEntity);
            dbPokemonEntity.CalculateTotalPower();

            dbPokemonEntity.EntityState = SharedKernel.Core.EntityState.Modified;
            await _pokemonRepository.UpdateAsync(dbPokemonEntity);
            return baseResponse;
        }
    
    
        private BaseServiceResponse CommonValidations(Pokemon pokemon)
        {
            var baseResponse = new BaseServiceResponse();
            var assembly = System.Reflection.Assembly.GetAssembly(typeof(Pokemon));
            foreach (var validationRuleClass in assembly.GetTypes().Where(item => item.GetInterfaces().Contains(typeof(IPokemonValidation)))) {
                var instance =(IPokemonValidation)Activator.CreateInstance(validationRuleClass);
                var result = instance.Validate(pokemon);
                if (result.Successfull == false)
                {
                    baseResponse.Message = result.Message;
                    baseResponse.Successfull = result.Successfull;
                    break;
                }
                instance = null;
            }
            return baseResponse;
        }
    }
}
