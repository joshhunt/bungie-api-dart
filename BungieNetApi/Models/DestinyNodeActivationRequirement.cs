using System.Runtime.Serialization;
using System.Collections.Generic;
using System.Linq;

namespace GhostSharper.Models
{
    /// <summary>
    /// Talent nodes have requirements that must be met before they can be activated.
    /// </summary>
    /// <summary>
    /// This describes the material costs, the Level of the Talent Grid's progression required, and other conditional information that limits whether a talent node can be activated.
    /// </summary>
    [DataContract]
    public class DestinyNodeActivationRequirement
    {
        /// <summary>
        /// The Progression level on the Talent Grid required to activate this node.
        /// </summary>
        /// <summary>
        /// See DestinyTalentGridDefinition.progressionHash for the related Progression, and read DestinyProgressionDefinition's documentation to learn more about Progressions.
        /// </summary>
        [DataMember(Name = "gridLevel", EmitDefaultValue = false)]
        public long GridLevel { get; set; }

        /// <summary>
        /// The list of hash identifiers for material requirement sets: materials that are required for the node to be activated. See DestinyMaterialRequirementSetDefinition for more information about material requirements.
        /// </summary>
        /// <summary>
        /// In this case, only a single DestinyMaterialRequirementSetDefinition will be chosen from this list, and we won't know which one will be chosen until an instance of the item is created.
        /// </summary>
        [DataMember(Name = "materialRequirementHashes", EmitDefaultValue = false)]
        public List<uint> MaterialRequirementHashes { get; set; }


        public override bool Equals(object input)
        {
            return this.Equals(input as DestinyNodeActivationRequirement);
        }

        public bool Equals(DestinyNodeActivationRequirement input)
        {
            if (input == null) return false;

            return
                (
                    GridLevel == input.GridLevel ||
                    (GridLevel.Equals(input.GridLevel))
                ) &&
                (
                    MaterialRequirementHashes == input.MaterialRequirementHashes ||
                    (MaterialRequirementHashes != null && MaterialRequirementHashes.SequenceEqual(input.MaterialRequirementHashes))
                ) ;
        }
    }
}

