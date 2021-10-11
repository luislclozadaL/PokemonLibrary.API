using System.ComponentModel.DataAnnotations;

namespace JQ.PokemonLibrary.Core.Model
{
    public class PokemonType
    {

        [Key]
        public int IdPokemonType { get; set; }
        public string Description { get; set; }
    }
}