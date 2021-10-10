using AutoMapper;
using JQ.PokemonLibrary.Core.DTOs;
using JQ.PokemonLibrary.Core.Model;
using JQ.PokemonLibrary.Core.Repositories;
using JQ.PokemonLibrary.Core.Services;
using JQ.PokemonLibrary.SharedKernel.Base;
using JQ.PokemonLibrary.SharedKernel.Core;
using JQ.PokemonLibrary.SharedKernel.Extensions;
using System;

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
            var validationResult = pokemon.GetValidationResults();

            if (!validationResult.Valid)
            {
                baseResponse.Message = validationResult.EntityValidationErrors;
                baseResponse.Successfull = false;
                return baseResponse;
            }
            if (!String.IsNullOrEmpty(pokemon.Type2) && pokemon.Type1 == pokemon.Type2)
            {
                baseResponse.Message = "Pokemon types must be different or secondary type must be empty";
                baseResponse.Successfull = false;
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

        public async Task<PokemonListServiceResponse> GetPokemonById(Guid pokemonId)
        {
            var serviceResponse = new PokemonListServiceResponse();
            serviceResponse.Pokemons = await _pokemonRepository.GetListAsync(item => item.Id == pokemonId, null, null);
            return serviceResponse;
        }

        public async Task<PokemonListServiceResponse> GetPokemonByNumber(int pokemonNumber)
        {
            var serviceResponse = new PokemonListServiceResponse();
            serviceResponse.Pokemons = await _pokemonRepository.GetListAsync(item => item.Number == pokemonNumber, null, null);
            return serviceResponse;
        }

        public async Task<PokemonListServiceResponse> GetPokemons(int? skip, int? take)
        {
            var serviceResponse = new PokemonListServiceResponse();
            serviceResponse.Pokemons = await _pokemonRepository.GetAllAsync(new BaseQueryOptions<Pokemon> { Skip = skip, Take = take, OrderByAsc = item => item.Number }, null);
            //serviceResponse.Pokemons = await _pokemonRepository.GetListAsync(null, new BaseQueryOptions<Pokemon>{ Skip = skip, Take = take }, null);
            return serviceResponse;
        }

        public async Task<PokemonListServiceResponse> GetPokemonsByCategory(string Category, int? skip, int? take)
        {
            var serviceResponse = new PokemonListServiceResponse();
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
            var validationResult = pokemon.GetValidationResults();

            if (!validationResult.Valid)
            {
                baseResponse.Message = validationResult.EntityValidationErrors;
                baseResponse.Successfull = false;
                return baseResponse;
            }
            if (!String.IsNullOrEmpty(pokemon.Type2) && pokemon.Type1 == pokemon.Type2)
            {
                baseResponse.Message = "Pokemon types most be different or secondary type must be empty";
                baseResponse.Successfull = false;
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
    }
}
