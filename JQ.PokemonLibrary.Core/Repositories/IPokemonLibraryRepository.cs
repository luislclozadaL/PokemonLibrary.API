using JQ.PokemonLibrary.Core.Model;
using JQ.PokemonLibrary.SharedKernel.Core;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.Core.Repositories
{
    public interface IPokemonLibraryRepository : IGenericRepository<Pokemon>
    {
        Task<List<Pokemon>> GetPokemonSearch(string name, int? type1, int? type2, int? skip, int? take);
        public Task<int> GetMaxPokemonNumber();
        public Task<int> NumberOfRecordsInDB();
    }
}
