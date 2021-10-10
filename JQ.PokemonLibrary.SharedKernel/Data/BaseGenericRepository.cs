using JQ.PokemonLibrary.SharedKernel.Extensions;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.ChangeTracking;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EntityState = JQ.PokemonLibrary.SharedKernel.Core;


namespace JQ.PokemonLibrary.SharedKernel.Core
{
    public class BaseGenericRepository<T> : IDisposable, IGenericRepository<T> where T : class, IEntity
    {
        internal DbContext _context { get; private set; }
        public DbSet<T> _contextDBSet { get; private set; }

        public BaseGenericRepository(DbContext context)
        {
            _context = context;
            _context.ChangeTracker.LazyLoadingEnabled = false;
            _contextDBSet = _context.Set<T>();
        }

        public virtual List<T> GetAll(IQueryOptions<T> options = null, params string[] includes)
        {
            IQueryable<T> dbQuery = _context.Set<T>();

            //Apply eager loading
            foreach (string include in includes)
            {
                dbQuery = dbQuery.Include(include);
            }
            if (options != null)
            {
                options.Count = dbQuery.AsNoTracking().Count();
                if (options.OrderByAsc != null)
                {

                    dbQuery = dbQuery.OrderBy(options.OrderByAsc).AsQueryable();
                }
                if (options.OrderByDes != null)
                {
                    dbQuery = dbQuery.OrderByDescending(options.OrderByDes).AsQueryable();
                }
                if (options.Take != null && options.Take > 0)
                {
                    dbQuery = dbQuery.AsNoTracking()
                        .Skip(options.Skip.GetValueOrDefault())
                        .Take(options.Take.GetValueOrDefault()).AsQueryable();
                }
            }
            return dbQuery
                .AsNoTracking()
                .ToList<T>();
        }
        public async virtual Task<List<T>> GetAllAsync(IQueryOptions<T> options = null, params string[] includes)
        {
            IQueryable<T> dbQuery = _context.Set<T>();
       
            if (includes != null)
            {
                foreach (string include in includes)
                {
                    dbQuery = dbQuery.Include(include);
                }
            }
            if (options != null)
            {
                options.Count = dbQuery.AsNoTracking().Count();
                if (options.OrderByAsc != null)
                {
                    dbQuery = dbQuery.OrderBy(options.OrderByAsc).AsQueryable();
                }
                if (options.OrderByDes != null)
                {
                    dbQuery = dbQuery.OrderByDescending(options.OrderByDes).AsQueryable();
                }
                if (options.Take != null && options.Take > 0)
                {
                    dbQuery = dbQuery.AsNoTracking()
                        .Skip(options.Skip.GetValueOrDefault())
                        .Take(options.Take.GetValueOrDefault()).AsQueryable();
                }
            }
            var result = await EntityExtensions.ToListAsyncSafe<T>(dbQuery.AsNoTracking());
            return result;

            //return await dbQuery
            //    .AsNoTracking()
            //    .ToListAsync<T>();
        }
        public virtual List<T> GetList(Func<T, bool> where, IQueryOptions<T> options = null, params string[] includes)
        {
            IQueryable<T> dbQuery = _context.Set<T>();

            foreach (string include in includes)
            {
                dbQuery = dbQuery.Include(include);
            }
            if (options != null)
            {
                options.Count = dbQuery.AsNoTracking().Where(where).Count();
                if (options.OrderByAsc != null)
                {

                    dbQuery = dbQuery.OrderBy(options.OrderByAsc).AsQueryable();
                }
                if (options.OrderByDes != null)
                {
                    dbQuery = dbQuery.OrderByDescending(options.OrderByDes).AsQueryable();
                }
                if (options.Take != null && options.Take > 0)
                {
                    dbQuery = dbQuery.AsNoTracking().Where(where)
                        .Skip(options.Skip.GetValueOrDefault())
                        .Take(options.Take.GetValueOrDefault()).AsQueryable();
                }
            }
            else
            {
                dbQuery = dbQuery.AsNoTracking().Where(where).AsQueryable();
            }
            return dbQuery.ToList<T>();
        }
        public async virtual Task<List<T>> GetListAsync(Func<T, bool> where, IQueryOptions<T> options = null, params string[] includes)
        {
            IQueryable<T> dbQuery = _context.Set<T>();

            if (includes != null)
            {
                foreach (string include in includes)
                {
                    dbQuery = dbQuery.Include(include);
                }
            }

            if (options != null)
            {
                options.Count = dbQuery.AsNoTracking().Where(where).Count();
                if (options.OrderByAsc != null)
                {
                    dbQuery = dbQuery.OrderBy(options.OrderByAsc).AsQueryable();
                }
                if (options.OrderByDes != null)
                {
                    dbQuery = dbQuery.OrderByDescending(options.OrderByDes).AsQueryable();
                }
                if (options.Take != null && options.Take > 0)
                {
                    dbQuery = dbQuery.AsNoTracking().Where(where)
                        .Skip(options.Skip.GetValueOrDefault())
                        .Take(options.Take.GetValueOrDefault()).AsQueryable();
                }
            }
            else
            {
                dbQuery = dbQuery.AsNoTracking().Where(where).AsQueryable();
            }

            //var result = await EntityExtensions.ToListAsyncSafe<T>(dbQuery.AsNoTracking());

            var result = await dbQuery.AsNoTracking().ToListAsyncSafe();
            return result;

            //return await dbQuery.ToListAsync<T>();
        }
        public virtual T GetSingle(Func<T, bool> where, params string[] includes)
        {
            T item = null;
            IQueryable<T> dbQuery = _context.Set<T>();

            if (includes != null)
            {
                foreach (string include in includes)
                {
                    dbQuery = dbQuery.Include(include);
                }
            }

            item = dbQuery
                .AsNoTracking() //Don't track any changes for the selected item
                .FirstOrDefault(where); //Apply where clause            
            return item;
        }
        public async virtual Task<T> GetSingleAsync(Func<T, bool> where, params string[] includes)
        {
            IQueryable<T> dbQuery = _context.Set<T>();

            if (includes != null)
            {
                foreach (string include in includes)
                {
                    dbQuery = dbQuery.Include(include);
                }
            }
            dbQuery = dbQuery
                .AsNoTracking()
                .Where(where)
                .AsQueryable();

            var result = await EntityExtensions.ToListAsyncSafe<T>(dbQuery);
            return result.FirstOrDefault();
        }
        public virtual void Add(params T[] items)
        {
            Update(items);
        }
        public async virtual Task AddAsync(params T[] items)
        {
            await UpdateAsync(items);
        }
        public virtual void Update(params T[] items)
        {
            DbSet<T> dbSet = _context.Set<T>();
            foreach (T item in items)
            {
                dbSet.Add(item);
                foreach (EntityEntry<IEntity> entry in _context.ChangeTracker.Entries<IEntity>())
                {
                    IEntity entity = entry.Entity;
                    entry.State = GetEntityState(entity.EntityState);
                }
            }
            _context.SaveChanges();
        }
        public async virtual Task UpdateAsync(params T[] items)
        {
            DbSet<T> dbSet = _context.Set<T>();
            foreach (T item in items)
            {
                dbSet.Add(item);
                foreach (EntityEntry<IEntity> entry in _context.ChangeTracker.Entries<IEntity>())
                {
                    IEntity entity = entry.Entity;
                    entry.State = GetEntityState(entity.EntityState);
                }
            }
            await _context.SaveChangesAsync();
        }
        public virtual void Remove(params T[] items)
        {
            Update(items);
        }
        public async virtual Task RemoveAsync(params T[] items)
        {
            await UpdateAsync(items);
        }
        protected static Microsoft.EntityFrameworkCore.EntityState GetEntityState(EntityState entityState)
        {
            return entityState switch
            {
                EntityState.Unchanged => Microsoft.EntityFrameworkCore.EntityState.Unchanged,
                EntityState.Added => Microsoft.EntityFrameworkCore.EntityState.Added,
                EntityState.Modified => Microsoft.EntityFrameworkCore.EntityState.Modified,
                EntityState.Deleted => Microsoft.EntityFrameworkCore.EntityState.Deleted,
                _ => Microsoft.EntityFrameworkCore.EntityState.Detached,
            };
        }
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (_context != null)
                {
                    _context.Dispose();
                    _context = null;
                }
            }
        }
    }
}
