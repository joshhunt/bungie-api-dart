using System.Runtime.Serialization;
using System.Collections.Generic;
using System.Linq;

namespace GhostSharper.Models
{
    [DataContract]
    public class DestinyMetricDefinition
    {
        /// <summary>
        /// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
        /// </summary>
        [DataMember(Name = "displayProperties", EmitDefaultValue = false)]
        public DestinyDisplayPropertiesDefinition DisplayProperties { get; set; }

        [DataMember(Name = "trackingObjectiveHash", EmitDefaultValue = false)]
        public uint TrackingObjectiveHash { get; set; }

        [DataMember(Name = "lowerValueIsBetter", EmitDefaultValue = false)]
        public bool LowerValueIsBetter { get; set; }

        [DataMember(Name = "presentationNodeType", EmitDefaultValue = false)]
        public DestinyPresentationNodeType PresentationNodeType { get; set; }

        [DataMember(Name = "traitIds", EmitDefaultValue = false)]
        public List<string> TraitIds { get; set; }

        [DataMember(Name = "traitHashes", EmitDefaultValue = false)]
        public List<uint> TraitHashes { get; set; }

        /// <summary>
        /// A quick reference to presentation nodes that have this node as a child. Presentation nodes can be parented under multiple parents.
        /// </summary>
        [DataMember(Name = "parentNodeHashes", EmitDefaultValue = false)]
        public List<uint> ParentNodeHashes { get; set; }

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
            return this.Equals(input as DestinyMetricDefinition);
        }

        public bool Equals(DestinyMetricDefinition input)
        {
            if (input == null) return false;

            return
                (
                    DisplayProperties == input.DisplayProperties ||
                    (DisplayProperties != null && DisplayProperties.Equals(input.DisplayProperties))
                ) &&
                (
                    TrackingObjectiveHash == input.TrackingObjectiveHash ||
                    (TrackingObjectiveHash.Equals(input.TrackingObjectiveHash))
                ) &&
                (
                    LowerValueIsBetter == input.LowerValueIsBetter ||
                    (LowerValueIsBetter != null && LowerValueIsBetter.Equals(input.LowerValueIsBetter))
                ) &&
                (
                    PresentationNodeType == input.PresentationNodeType ||
                    (PresentationNodeType != null && PresentationNodeType.Equals(input.PresentationNodeType))
                ) &&
                (
                    TraitIds == input.TraitIds ||
                    (TraitIds != null && TraitIds.SequenceEqual(input.TraitIds))
                ) &&
                (
                    TraitHashes == input.TraitHashes ||
                    (TraitHashes != null && TraitHashes.SequenceEqual(input.TraitHashes))
                ) &&
                (
                    ParentNodeHashes == input.ParentNodeHashes ||
                    (ParentNodeHashes != null && ParentNodeHashes.SequenceEqual(input.ParentNodeHashes))
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

