using JQ.PokemonLibrary.Core.Model;
using JQ.PokemonLibrary.SharedKernel.Core;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.Core.Repositories
{
    public interface IPokemonLibraryRepository : IGenericRepository<Pokemon>
    {
        public Task<int> GetMaxPokemonNumber();
        public Task<int> NumberOfRecordsInDB();
    }
}
