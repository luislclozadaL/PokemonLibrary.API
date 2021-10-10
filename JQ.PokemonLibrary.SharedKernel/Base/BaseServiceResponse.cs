using System;
using System.Collections.Generic;
using System.Text;

namespace JQ.PokemonLibrary.SharedKernel.Base
{
    public class BaseServiceResponse
    {
        public string Message { get; set; }
        public bool Successfull { get; set; }
        public Exception Exception { get; set; }
    }
}
