using JQ.PokemonLibrary.SharedKernel.Base;

namespace JQ.PokemonLibrary.Core.DTOs
{
    public class DeletePokemonServiceResponse : BaseServiceResponse
    {
        public bool Exists { get; set; }
    }
}
