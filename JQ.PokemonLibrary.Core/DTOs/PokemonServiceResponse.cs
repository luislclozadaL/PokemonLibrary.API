using JQ.PokemonLibrary.Core.Model;
using JQ.PokemonLibrary.SharedKernel.Base;

namespace JQ.PokemonLibrary.Core.DTOs
{
    public class PokemonServiceResponse : BaseServiceResponse
    {
        public Pokemon Pokemon { get; set; }
    }
}
