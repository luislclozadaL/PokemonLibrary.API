using JQ.PokemonLibrary.SharedKernel.Core;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace JQ.PokemonLibrary.Core.Model
{
    public class Pokemon : BaseEntity
    {
        [Key]
        public Guid Id { get; set; }
        public int Number { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        public string Type1 { get; set; }
        public string Type2 { get; set; }
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

        public void CalculateTotalPower()
        {
            Total = HP + Attack + Defense + SpecialMoveAttack + SpecialMoveDefense + Speed;
        }

    }
}
