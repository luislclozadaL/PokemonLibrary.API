using System;
using System.Collections.Generic;
using System.Text;

namespace JQ.PokemonLibrary.SharedKernel.Core
{
    public interface IEntity
    {
        public EntityState EntityState { get; set; }
    }
}
