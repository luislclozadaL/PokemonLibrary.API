using JQ.PokemonLibrary.Catalogs.Core.DTOs;
using JQ.PokemonLibrary.Catalogs.Core.Repositories;
using JQ.PokemonLibrary.Catalogs.Core.Services;
using System.Threading.Tasks;

namespace JQ_PokemonLibrary.Catalogs.Service
{
    public class PokemonLibraryCatalogsService : IPokemonLibraryCatalogsService
    {
        private IPokemonTypeRepository _pokemonTypeRepository;

        public PokemonLibraryCatalogsService(IPokemonTypeRepository pokemonTypeRepo)
        {
            _pokemonTypeRepository = pokemonTypeRepo;
        }

        public async Task<PokemonTypeListServiceResponse> GetPokemonTypes() {

            var serviceResponse = new PokemonTypeListServiceResponse() { Successfull = true };
            serviceResponse.PokemonTypes = await _pokemonTypeRepository.GetAllAsync(null, null);
            return serviceResponse;
        }
    }
}
