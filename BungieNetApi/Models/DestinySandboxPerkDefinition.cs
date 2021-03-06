using System.Runtime.Serialization;

namespace GhostSharper.Models
{
    /// <summary>
    /// Perks are modifiers to a character or item that can be applied situationally.
    /// </summary>
    /// <summary>
    /// - Perks determine a weapons' damage type.
    /// </summary>
    /// <summary>
    /// - Perks put the Mods in Modifiers (they are literally the entity that bestows the Sandbox benefit for whatever fluff text about the modifier in the Socket, Plug or Talent Node)
    /// </summary>
    /// <summary>
    /// - Perks are applied for unique alterations of state in Objectives
    /// </summary>
    /// <summary>
    /// Anyways, I'm sure you can see why perks are so interesting.
    /// </summary>
    /// <summary>
    /// What Perks often don't have is human readable information, so we attempt to reverse engineer that by pulling that data from places that uniquely refer to these perks: namely, Talent Nodes and Plugs. That only gives us a subset of perks that are human readable, but those perks are the ones people generally care about anyways. The others are left as a mystery, their true purpose mostly unknown and undocumented.
    /// </summary>
    [DataContract]
    public class DestinySandboxPerkDefinition
    {
        /// <summary>
        /// These display properties are by no means guaranteed to be populated. Usually when it is, it's only because we back-filled them with the displayProperties of some Talent Node or Plug item that happened to be uniquely providing that perk.
        /// </summary>
        [DataMember(Name = "displayProperties", EmitDefaultValue = false)]
        public DestinyDisplayPropertiesDefinition DisplayProperties { get; set; }

        /// <summary>
        /// The string identifier for the perk.
        /// </summary>
        [DataMember(Name = "perkIdentifier", EmitDefaultValue = false)]
        public string PerkIdentifier { get; set; }

        /// <summary>
        /// If true, you can actually show the perk in the UI. Otherwise, it doesn't have useful player-facing information.
        /// </summary>
        [DataMember(Name = "isDisplayable", EmitDefaultValue = false)]
        public bool IsDisplayable { get; set; }

        /// <summary>
        /// If this perk grants a damage type to a weapon, the damage type will be defined here.
        /// </summary>
        /// <summary>
        /// Unless you have a compelling reason to use this enum value, use the damageTypeHash instead to look up the actual DestinyDamageTypeDefinition.
        /// </summary>
        [DataMember(Name = "damageType", EmitDefaultValue = false)]
        public DamageType DamageType { get; set; }

        /// <summary>
        /// The hash identifier for looking up the DestinyDamageTypeDefinition, if this perk has a damage type.
        /// </summary>
        /// <summary>
        /// This is preferred over using the damageType enumeration value, which has been left purely because it is occasionally convenient.
        /// </summary>
        [DataMember(Name = "damageTypeHash", EmitDefaultValue = false)]
        public uint DamageTypeHash { get; set; }

        /// <summary>
        /// An old holdover from the original Armory, this was an attempt to group perks by functionality.
        /// </summary>
        /// <summary>
        /// It is as yet unpopulated, and there will be quite a bit of work needed to restore it to its former working order.
        /// </summary>
        [DataMember(Name = "perkGroups", EmitDefaultValue = false)]
        public DestinyTalentNodeStepGroups PerkGroups { get; set; }

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
            return this.Equals(input as DestinySandboxPerkDefinition);
        }

        public bool Equals(DestinySandboxPerkDefinition input)
        {
            if (input == null) return false;

            return
                (
                    DisplayProperties == input.DisplayProperties ||
                    (DisplayProperties != null && DisplayProperties.Equals(input.DisplayProperties))
                ) &&
                (
                    PerkIdentifier == input.PerkIdentifier ||
                    (PerkIdentifier != null && PerkIdentifier.Equals(input.PerkIdentifier))
                ) &&
                (
                    IsDisplayable == input.IsDisplayable ||
                    (IsDisplayable != null && IsDisplayable.Equals(input.IsDisplayable))
                ) &&
                (
                    DamageType == input.DamageType ||
                    (DamageType != null && DamageType.Equals(input.DamageType))
                ) &&
                (
                    DamageTypeHash == input.DamageTypeHash ||
                    (DamageTypeHash.Equals(input.DamageTypeHash))
                ) &&
                (
                    PerkGroups == input.PerkGroups ||
                    (PerkGroups != null && PerkGroups.Equals(input.PerkGroups))
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

