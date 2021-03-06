using System.Runtime.Serialization;
using System.Collections.Generic;
using System.Linq;

namespace GhostSharper.Models
{
    /// <summary>
    /// These are pre-constructed collections of data that can be used to determine the Level Requirement for an item given a Progression to be tested (such as the Character's level).
    /// </summary>
    /// <summary>
    /// For instance, say a character receives a new Auto Rifle, and that Auto Rifle's DestinyInventoryItemDefinition.quality.progressionLevelRequirementHash property is pointing at one of these DestinyProgressionLevelRequirementDefinitions. Let's pretend also that the progressionHash it is pointing at is the Character Level progression. In that situation, the character's level will be used to interpolate a value in the requirementCurve property. The value picked up from that interpolation will be the required level for the item.
    /// </summary>
    [DataContract]
    public class DestinyProgressionLevelRequirementDefinition
    {
        /// <summary>
        /// A curve of level requirements, weighted by the related progressions' level.
        /// </summary>
        /// <summary>
        /// Interpolate against this curve with the character's progression level to determine what the level requirement of the generated item that is using this data will be.
        /// </summary>
        [DataMember(Name = "requirementCurve", EmitDefaultValue = false)]
        public List<InterpolationPointFloat> RequirementCurve { get; set; }

        /// <summary>
        /// The progression whose level should be used to determine the level requirement.
        /// </summary>
        /// <summary>
        /// Look up the DestinyProgressionDefinition with this hash for more information about the progression in question.
        /// </summary>
        [DataMember(Name = "progressionHash", EmitDefaultValue = false)]
        public uint ProgressionHash { get; set; }

        /// <summary>
        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// </summary>
        /// <summary>
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        /// </summary>
        [DataMember(Name = "hash", EmitDefaultValue = false)]
        public uint Hash { get; set; }

        /// <summary>
        /// The index of the entity as it was found in the investment tables.
        /// </summary>
        [DataMember(Name = "index", EmitDefaultValue = false)]
        public long Index { get; set; }

        /// <summary>
        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        /// </summary>
        [DataMember(Name = "redacted", EmitDefaultValue = false)]
        public bool Redacted { get; set; }


        public override bool Equals(object input)
        {
            return this.Equals(input as DestinyProgressionLevelRequirementDefinition);
        }

        public bool Equals(DestinyProgressionLevelRequirementDefinition input)
        {
            if (input == null) return false;

            return
                (
                    RequirementCurve == input.RequirementCurve ||
                    (RequirementCurve != null && RequirementCurve.SequenceEqual(input.RequirementCurve))
                ) &&
                (
                    ProgressionHash == input.ProgressionHash ||
                    (ProgressionHash.Equals(input.ProgressionHash))
                ) &&
                (
                    Hash == input.Hash ||
                    (Hash.Equals(input.Hash))
                ) &&
                (
                    Index == input.Index ||
                    (Index.Equals(input.Index))
                ) &&
                (
                    Redacted == input.Redacted ||
                    (Redacted != null && Redacted.Equals(input.Redacted))
                ) ;
        }
    }
}

