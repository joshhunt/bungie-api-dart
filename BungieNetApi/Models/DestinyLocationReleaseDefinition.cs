using System.Runtime.Serialization;
using System.Collections.Generic;
using System.Linq;

namespace GhostSharper.Models
{
    /// <summary>
    /// A specific "spot" referred to by a location. Only one of these can be active at a time for a given Location.
    /// </summary>
    [DataContract]
    public class DestinyLocationReleaseDefinition
    {
        /// <summary>
        /// Sadly, these don't appear to be populated anymore (ever?)
        /// </summary>
        [DataMember(Name = "displayProperties", EmitDefaultValue = false)]
        public DestinyDisplayPropertiesDefinition DisplayProperties { get; set; }

        [DataMember(Name = "smallTransparentIcon", EmitDefaultValue = false)]
        public string SmallTransparentIcon { get; set; }

        [DataMember(Name = "mapIcon", EmitDefaultValue = false)]
        public string MapIcon { get; set; }

        [DataMember(Name = "largeTransparentIcon", EmitDefaultValue = false)]
        public string LargeTransparentIcon { get; set; }

        /// <summary>
        /// If we had map information, this spawnPoint would be interesting. But sadly, we don't have that info.
        /// </summary>
        [DataMember(Name = "spawnPoint", EmitDefaultValue = false)]
        public uint SpawnPoint { get; set; }

        /// <summary>
        /// The Destination being pointed to by this location.
        /// </summary>
        [DataMember(Name = "destinationHash", EmitDefaultValue = false)]
        public uint DestinationHash { get; set; }

        /// <summary>
        /// The Activity being pointed to by this location.
        /// </summary>
        [DataMember(Name = "activityHash", EmitDefaultValue = false)]
        public uint ActivityHash { get; set; }

        /// <summary>
        /// The Activity Graph being pointed to by this location.
        /// </summary>
        [DataMember(Name = "activityGraphHash", EmitDefaultValue = false)]
        public uint ActivityGraphHash { get; set; }

        /// <summary>
        /// The Activity Graph Node being pointed to by this location. (Remember that Activity Graph Node hashes are only unique within an Activity Graph: so use the combination to find the node being spoken of)
        /// </summary>
        [DataMember(Name = "activityGraphNodeHash", EmitDefaultValue = false)]
        public uint ActivityGraphNodeHash { get; set; }

        /// <summary>
        /// The Activity Bubble within the Destination. Look this up in the DestinyDestinationDefinition's bubbles and bubbleSettings properties.
        /// </summary>
        [DataMember(Name = "activityBubbleName", EmitDefaultValue = false)]
        public uint ActivityBubbleName { get; set; }

        /// <summary>
        /// If we had map information, this would tell us something cool about the path this location wants you to take. I wish we had map information.
        /// </summary>
        [DataMember(Name = "activityPathBundle", EmitDefaultValue = false)]
        public uint ActivityPathBundle { get; set; }

        /// <summary>
        /// If we had map information, this would tell us about path information related to destination on the map. Sad. Maybe you can do something cool with it. Go to town man.
        /// </summary>
        [DataMember(Name = "activityPathDestination", EmitDefaultValue = false)]
        public uint ActivityPathDestination { get; set; }

        /// <summary>
        /// The type of Nav Point that this represents. See the enumeration for more info.
        /// </summary>
        [DataMember(Name = "navPointType", EmitDefaultValue = false)]
        public DestinyActivityNavPointType NavPointType { get; set; }

        /// <summary>
        /// Looks like it should be the position on the map, but sadly it does not look populated... yet?
        /// </summary>
        [DataMember(Name = "worldPosition", EmitDefaultValue = false)]
        public List<long> WorldPosition { get; set; }


        public override bool Equals(object input)
        {
            return this.Equals(input as DestinyLocationReleaseDefinition);
        }

        public bool Equals(DestinyLocationReleaseDefinition input)
        {
            if (input == null) return false;

            return
                (
                    DisplayProperties == input.DisplayProperties ||
                    (DisplayProperties != null && DisplayProperties.Equals(input.DisplayProperties))
                ) &&
                (
                    SmallTransparentIcon == input.SmallTransparentIcon ||
                    (SmallTransparentIcon != null && SmallTransparentIcon.Equals(input.SmallTransparentIcon))
                ) &&
                (
                    MapIcon == input.MapIcon ||
                    (MapIcon != null && MapIcon.Equals(input.MapIcon))
                ) &&
                (
                    LargeTransparentIcon == input.LargeTransparentIcon ||
                    (LargeTransparentIcon != null && LargeTransparentIcon.Equals(input.LargeTransparentIcon))
                ) &&
                (
                    SpawnPoint == input.SpawnPoint ||
                    (SpawnPoint.Equals(input.SpawnPoint))
                ) &&
                (
                    DestinationHash == input.DestinationHash ||
                    (DestinationHash.Equals(input.DestinationHash))
                ) &&
                (
                    ActivityHash == input.ActivityHash ||
                    (ActivityHash.Equals(input.ActivityHash))
                ) &&
                (
                    ActivityGraphHash == input.ActivityGraphHash ||
                    (ActivityGraphHash.Equals(input.ActivityGraphHash))
                ) &&
                (
                    ActivityGraphNodeHash == input.ActivityGraphNodeHash ||
                    (ActivityGraphNodeHash.Equals(input.ActivityGraphNodeHash))
                ) &&
                (
                    ActivityBubbleName == input.ActivityBubbleName ||
                    (ActivityBubbleName.Equals(input.ActivityBubbleName))
                ) &&
                (
                    ActivityPathBundle == input.ActivityPathBundle ||
                    (ActivityPathBundle.Equals(input.ActivityPathBundle))
                ) &&
                (
                    ActivityPathDestination == input.ActivityPathDestination ||
                    (ActivityPathDestination.Equals(input.ActivityPathDestination))
                ) &&
                (
                    NavPointType == input.NavPointType ||
                    (NavPointType != null && NavPointType.Equals(input.NavPointType))
                ) &&
                (
                    WorldPosition == input.WorldPosition ||
                    (WorldPosition != null && WorldPosition.SequenceEqual(input.WorldPosition))
                ) ;
        }
    }
}

