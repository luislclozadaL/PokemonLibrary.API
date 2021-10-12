using JQ.PokemonLibrary.Core.DTOs;
using JQ.PokemonLibrary.Core.Model;
using JQ.PokemonLibrary.SharedKernel.Base;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.Core.Services
{
    public interface IPokemonLibraryService
    {
        public Task<BaseServiceResponse> AddPokemon(Pokemon pokemon);
        public Task<BaseServiceResponse> UpdatePokemon(Pokemon pokemon);

        public Task<PokemonServiceResponse> GetPokemonById(Guid pokemonId);
        public Task<PokemonListServiceResponse> GetPokemonByNumber(int pokemonNumber);
        public Task<PokemonListServiceResponse> GetPokemonsByCategory(int Category, int? skip, int? take);
        public Task<PokemonListServiceResponse> GetPokemons(int? skip, int? take);
        public Task<PokemonListServiceResponse> GetPokemons(string name, int? type1, int? type2, int? skip, int? take);
        Task<DeletePokemonServiceResponse> DeletePokemon(Guid pokemonId);
        Task<NumberOfPokemonsServiceResponse> GetNumberOfPokemons();
    }
}
