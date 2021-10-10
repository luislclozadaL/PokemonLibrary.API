
namespace JQ.PokemonLibrary.API.Models
{
    public class UpdatePokemonDTO
    {
        public string Name { get; set; }
        public string Type1 { get; set; }
        public string Type2 { get; set; }
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
