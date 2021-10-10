using System;
using System.Collections.Generic;
using System.Text;

namespace JQ.PokemonLibrary.SharedKernel.Base
{
    public class EntityValidationResult
    {
        public bool Valid { get; set; } = true;
        public string EntityValidationErrors { get; set; }
    }
}
