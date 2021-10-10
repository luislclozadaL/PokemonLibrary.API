using JQ.PokemonLibrary.Core.Model;
using JQ.PokemonLibrary.Core.Repositories;
using JQ.PokemonLibrary.SharedKernel.Core;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.Data.Repositories
{
    public class PokemonLibraryRepository : BaseGenericRepository<Pokemon>, IPokemonLibraryRepository
    {

        public PokemonLibraryRepository() : base(new PokemonLibraryDBContext())
        {
            
        }

        public Task<int> GetMaxPokemonNumber()
        {
            return base._contextDBSet.MaxAsync(item => item.Number);
        }

        public Task<int> NumberOfRecordsInDB()
        {
            return base._contextDBSet.CountAsync();
        }
    }
}
