using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.DB.Model
{
    public class PokemonType
    {
        [Key]
        public int IdPokemonType { get; set; }
        public string Description { get; set; }
    }
}
