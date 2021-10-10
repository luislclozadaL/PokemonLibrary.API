using JQ.PokemonLibrary.Core.Model;
using JQ.PokemonLibrary.SharedKernel.Base;
using System;
using System.Collections.Generic;
using System.Text;

namespace JQ.PokemonLibrary.Core.DTOs
{
    public class PokemonListServiceResponse: BaseServiceResponse
    {
        public IList<Pokemon> Pokemons { get; set; }
    }
}
