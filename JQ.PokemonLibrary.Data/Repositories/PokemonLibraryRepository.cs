using JQ.PokemonLibrary.Core.Model;
using JQ.PokemonLibrary.Core.Repositories;
using JQ.PokemonLibrary.SharedKernel.Core;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.Data.Repositories
{
    public class PokemonLibraryRepository : BaseGenericRepository<Pokemon>, IPokemonLibraryRepository
    {

        public PokemonLibraryRepository() : base(new PokemonLibraryDBContext())
        {
            
        }

        public Task<List<Pokemon>> GetPokemonSearch(string name, int? type1, int? type2, int? skip, int? take)
        {
            var query = _contextDBSet
                .Include(item => item.PokemonType1)
                .Include(item => item.PokemonType2)
                .Where(
                    item => (item.Name.Contains(name) || name == null)
                    && (item.Type1 == type1 || type1 == null)
                    && (item.Type2 == type2 || type2 == null));

            if ((take != null && take > 0) && (skip != null && skip > 0))
            {
                query = query.Skip(skip.Value)
                    .Take(take.Value);
            }

            return query.OrderBy(item => item.Number).ToListAsync();
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
