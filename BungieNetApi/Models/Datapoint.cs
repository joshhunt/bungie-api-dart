using System.Runtime.Serialization;
using System;

namespace GhostSharper.Models
{
    [DataContract]
    public class Datapoint
    {
        /// <summary>
        /// Timestamp for the related count.
        /// </summary>
        [DataMember(Name = "time", EmitDefaultValue = false)]
        public DateTime Time { get; set; }

        /// <summary>
        /// Count associated with timestamp
        /// </summary>
        [DataMember(Name = "count", EmitDefaultValue = false)]
        public double Count { get; set; }


        public override bool Equals(object input)
        {
            return this.Equals(input as Datapoint);
        }

        public bool Equals(Datapoint input)
        {
            if (input == null) return false;

            return
                (
                    Time == input.Time ||
                    (Time != null && Time.Equals(input.Time))
                ) &&
                (
                    Count == input.Count ||
                    (Count.Equals(input.Count))
                ) ;
        }
    }
}

