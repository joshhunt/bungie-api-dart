using System.Runtime.Serialization;

namespace GhostSharper.Models
{
    /// <summary>
    /// There's a lot of places where we need to know scope on more than just a profile or character level. For everything else, there's this more generic sense of scope.
    /// </summary>
    
    public enum DestinyScope
    {
        /// <summary>
        /// Profile = 0
        /// </summary>
        [EnumMember(Value = "0")]
        Profile = 0,

        /// <summary>
        /// Character = 1
        /// </summary>
        [EnumMember(Value = "1")]
        Character = 1,

    }
}