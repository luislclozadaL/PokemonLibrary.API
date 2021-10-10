//using HTN.SharedKernel.Core;
using System;
using System.Linq.Expressions;

namespace JQ.PokemonLibrary.SharedKernel.Core
{
    public class BaseQueryOptions<T> : IQueryOptions<T> where T: class, IEntity
    {
        public int? Skip { get; set; }

        public int? Take { get; set; }

        public int Count { get; set; }

        public Expression<Func<T, object>> OrderByAsc { get; set; }

        public Expression<Func<T, object>> OrderByDes { get; set; }
    }
}
