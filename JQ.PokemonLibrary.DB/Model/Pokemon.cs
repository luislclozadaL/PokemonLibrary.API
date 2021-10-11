using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.DB.Model
{
    public class Pokemon
    {
        [Key]
        public Guid Id { get; set; }
        public int Number { get; set; }
        [Required]
        public string Name { get; set; }
        
        [Required]
        [Column("Type1")]
        public int Type1 { get; set; }
        [ForeignKey("Type1")]
        public PokemonType PokemonType1 { get; set; }

        [Column("Type2")]
        public int? Type2 { get; set; }

        [ForeignKey("Type2")]
        public PokemonType PokemonType2 { get; set; }

        [Required]
        public int Total { get; set; }

        [Required]
        public int HP { get; set; }

        [Required]
        public int Attack { get; set; }

        [Required]
        public int Defense { get; set; }

        [Required]
        public int SpecialMoveAttack { get; set; }

        [Required]
        public int SpecialMoveDefense { get; set; }

        [Required]
        public int Speed { get; set; }

        [Required]
        public int Generation { get; set; }

        [Required]
        public bool Legendary { get; set; }
    }
}
