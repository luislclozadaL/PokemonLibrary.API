using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace JQ.PokemonLibrary.API.Models
{
    public class PokemonDTO
    {
        public Guid Id { get; set; }
        public int Number { get; set; }
        public string Name { get; set; }
        public PokemonTypeDTO PokemonType1 { get; set; }
        public PokemonTypeDTO PokemonType2 { get; set; }
        public int Total { get; set; }
        public int HP { get; set; }
        public int Attack { get; set; }
        public int Defense { get; set; }
        public int SpecialMoveAttack { get; set; }
        public int SpecialMoveDefense { get; set; }
        public int Speed { get; set; }
        public int Generation { get; set; }
        public bool Legendary { get; set; }
    }
}
