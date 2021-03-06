using System.Runtime.Serialization;
using System.Collections.Generic;
using System.Linq;

namespace GhostSharper.Models
{
    /// <summary>
    /// Defines a
    /// </summary>
    [DataContract]
    public class DestinyCollectibleDefinition
    {
        /// <summary>
        /// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
        /// </summary>
        [DataMember(Name = "displayProperties", EmitDefaultValue = false)]
        public DestinyDisplayPropertiesDefinition DisplayProperties { get; set; }

        /// <summary>
        /// Indicates whether the state of this Collectible is determined on a per-character or on an account-wide basis.
        /// </summary>
        [DataMember(Name = "scope", EmitDefaultValue = false)]
        public DestinyScope Scope { get; set; }

        /// <summary>
        /// A human readable string for a hint about how to acquire the item.
        /// </summary>
        [DataMember(Name = "sourceString", EmitDefaultValue = false)]
        public string SourceString { get; set; }

        /// <summary>
        /// This is a hash identifier we are building on the BNet side in an attempt to let people group collectibles by similar sources.
        /// </summary>
        /// <summary>
        /// I can't promise that it's going to be 100% accurate, but if the designers were consistent in assigning the same source strings to items with the same sources, it *ought to* be. No promises though.
        /// </summary>
        /// <summary>
        /// This hash also doesn't relate to an actual definition, just to note: we've got nothing useful other than the source string for this data.
        /// </summary>
        [DataMember(Name = "sourceHash", EmitDefaultValue = false)]
        public uint SourceHash { get; set; }

        [DataMember(Name = "itemHash", EmitDefaultValue = false)]
        public uint ItemHash { get; set; }

        [DataMember(Name = "acquisitionInfo", EmitDefaultValue = false)]
        public DestinyCollectibleAcquisitionBlock AcquisitionInfo { get; set; }

        [DataMember(Name = "stateInfo", EmitDefaultValue = false)]
        public DestinyCollectibleStateBlock StateInfo { get; set; }

        [DataMember(Name = "presentationInfo", EmitDefaultValue = false)]
        public DestinyPresentationChildBlock PresentationInfo { get; set; }

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
            return this.Equals(input as DestinyCollectibleDefinition);
        }

        public bool Equals(DestinyCollectibleDefinition input)
        {
            if (input == null) return false;

            return
                (
                    DisplayProperties == input.DisplayProperties ||
                    (DisplayProperties != null && DisplayProperties.Equals(input.DisplayProperties))
                ) &&
                (
                    Scope == input.Scope ||
                    (Scope != null && Scope.Equals(input.Scope))
                ) &&
                (
                    SourceString == input.SourceString ||
                    (SourceString != null && SourceString.Equals(input.SourceString))
                ) &&
                (
                    SourceHash == input.SourceHash ||
                    (SourceHash.Equals(input.SourceHash))
                ) &&
                (
                    ItemHash == input.ItemHash ||
                    (ItemHash.Equals(input.ItemHash))
                ) &&
                (
                    AcquisitionInfo == input.AcquisitionInfo ||
                    (AcquisitionInfo != null && AcquisitionInfo.Equals(input.AcquisitionInfo))
                ) &&
                (
                    StateInfo == input.StateInfo ||
                    (StateInfo != null && StateInfo.Equals(input.StateInfo))
                ) &&
                (
                    PresentationInfo == input.PresentationInfo ||
                    (PresentationInfo != null && PresentationInfo.Equals(input.PresentationInfo))
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

