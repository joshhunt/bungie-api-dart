using System.Runtime.Serialization;

namespace GhostSharper.Models
{
    /// <summary>
    /// Represents a stat on an item *or* Character (NOT a Historical Stat, but a physical attribute stat like Attack, Defense etc...)
    /// </summary>
    [DataContract]
    public class DestinyStat
    {
        /// <summary>
        /// The hash identifier for the Stat. Use it to look up the DestinyStatDefinition for static data about the stat.
        /// </summary>
        [DataMember(Name = "statHash", EmitDefaultValue = false)]
        public uint StatHash { get; set; }

        /// <summary>
        /// The current value of the Stat.
        /// </summary>
        [DataMember(Name = "value", EmitDefaultValue = false)]
        public long Value { get; set; }


        public override bool Equals(object input)
        {
            return this.Equals(input as DestinyStat);
        }

        public bool Equals(DestinyStat input)
        {
            if (input == null) return false;

            return
                (
                    StatHash == input.StatHash ||
                    (StatHash.Equals(input.StatHash))
                ) &&
                (
                    Value == input.Value ||
                    (Value.Equals(input.Value))
                ) ;
        }
    }
}

