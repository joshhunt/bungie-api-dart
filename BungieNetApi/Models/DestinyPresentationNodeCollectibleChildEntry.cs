using System.Runtime.Serialization;

namespace GhostSharper.Models
{
    [DataContract]
    public class DestinyPresentationNodeCollectibleChildEntry
    {
        [DataMember(Name = "collectibleHash", EmitDefaultValue = false)]
        public uint CollectibleHash { get; set; }


        public override bool Equals(object input)
        {
            return this.Equals(input as DestinyPresentationNodeCollectibleChildEntry);
        }

        public bool Equals(DestinyPresentationNodeCollectibleChildEntry input)
        {
            if (input == null) return false;

            return
                (
                    CollectibleHash == input.CollectibleHash ||
                    (CollectibleHash.Equals(input.CollectibleHash))
                ) ;
        }
    }
}

