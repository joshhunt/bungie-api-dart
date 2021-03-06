using System.Runtime.Serialization;

namespace GhostSharper.Models
{
    /// <summary>
    /// Determines how items are sorted in an inventory bucket.
    /// </summary>
    
    public enum DestinyItemSortType
    {
        /// <summary>
        /// ItemId = 0
        /// </summary>
        [EnumMember(Value = "0")]
        ItemId = 0,

        /// <summary>
        /// Timestamp = 1
        /// </summary>
        [EnumMember(Value = "1")]
        Timestamp = 1,

        /// <summary>
        /// StackSize = 2
        /// </summary>
        [EnumMember(Value = "2")]
        StackSize = 2,

    }
}