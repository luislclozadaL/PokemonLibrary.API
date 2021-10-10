using System.ComponentModel.DataAnnotations.Schema;
using System.Runtime.Serialization;
using System.Text.Json.Serialization;

namespace JQ.PokemonLibrary.SharedKernel.Core
{
    public class BaseEntity : IEntity
    {
        [NotMapped]
        [IgnoreDataMember]
        [JsonIgnore]
        public EntityState EntityState { get; set; }

    }
}
