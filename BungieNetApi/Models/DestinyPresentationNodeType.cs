using System.Runtime.Serialization;

namespace GhostSharper.Models
{
    
    public enum DestinyPresentationNodeType
    {
        /// <summary>
        /// Default = 0
        /// </summary>
        [EnumMember(Value = "0")]
        Default = 0,

        /// <summary>
        /// Category = 1
        /// </summary>
        [EnumMember(Value = "1")]
        Category = 1,

        /// <summary>
        /// Collectibles = 2
        /// </summary>
        [EnumMember(Value = "2")]
        Collectibles = 2,

        /// <summary>
        /// Records = 3
        /// </summary>
        [EnumMember(Value = "3")]
        Records = 3,

        /// <summary>
        /// Metric = 4
        /// </summary>
        [EnumMember(Value = "4")]
        Metric = 4,

    }
}