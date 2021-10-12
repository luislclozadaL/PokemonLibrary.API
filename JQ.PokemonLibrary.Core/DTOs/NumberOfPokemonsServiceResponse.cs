using JQ.PokemonLibrary.SharedKernel.Base;
using System;
using System.Collections.Generic;
using System.Text;

namespace JQ.PokemonLibrary.Core.DTOs
{
    public class NumberOfPokemonsServiceResponse : BaseServiceResponse
    {
        public int NumberOfPokemons { get; set; }
    }
}
