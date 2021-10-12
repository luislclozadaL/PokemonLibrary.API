using JQ.PokemonLibrary.SharedKernel.Core;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.Catalogs.Core.Model
{
    public class PokemonType : BaseEntity
    {
        [Key]
        public int IdPokemonType { get; set; }
        public string Description { get; set; }
    }
}
