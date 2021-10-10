using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.SharedKernel.Core
{
    public interface IGenericRepository<T> where T : class, IEntity
    {
        List<T> GetAll(IQueryOptions<T> options = null, params string[] includes);
        Task<List<T>> GetAllAsync(IQueryOptions<T> options = null, params string[] includes);

        List<T> GetList(Func<T, bool> where, IQueryOptions<T> options = null, params string[] includes);
        Task<List<T>> GetListAsync(Func<T, bool> where, IQueryOptions<T> options, params string[] includes);

        T GetSingle(Func<T, bool> where, params string[] includes);
        Task<T> GetSingleAsync(Func<T, bool> where, params string[] includes);

        void Add(params T[] items);
        Task AddAsync(params T[] items);

        void Update(params T[] items);
        Task UpdateAsync(params T[] items);

        void Remove(params T[] items);
        Task RemoveAsync(params T[] items);
    }
}
