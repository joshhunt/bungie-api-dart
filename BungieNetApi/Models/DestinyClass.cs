using System.Runtime.Serialization;

namespace GhostSharper.Models
{
    
    public enum DestinyClass
    {
        /// <summary>
        /// Titan = 0
        /// </summary>
        [EnumMember(Value = "0")]
        Titan = 0,

        /// <summary>
        /// Hunter = 1
        /// </summary>
        [EnumMember(Value = "1")]
        Hunter = 1,

        /// <summary>
        /// Warlock = 2
        /// </summary>
        [EnumMember(Value = "2")]
        Warlock = 2,

        /// <summary>
        /// Unknown = 3
        /// </summary>
        [EnumMember(Value = "3")]
        Unknown = 3,

    }
}