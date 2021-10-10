using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.API.Base
{
    public class ApiResponse<T> where T : class
    {
        public T Data { get; set; }
        public bool Success { get; set; }
        public Exception Exception { get; set; }
    }
}
