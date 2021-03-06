using System.Runtime.Serialization;

namespace GhostSharper.Models
{
    
    public enum GroupPotentialMemberStatus
    {
        /// <summary>
        /// None = 0
        /// </summary>
        [EnumMember(Value = "0")]
        None = 0,

        /// <summary>
        /// Applicant = 1
        /// </summary>
        [EnumMember(Value = "1")]
        Applicant = 1,

        /// <summary>
        /// Invitee = 2
        /// </summary>
        [EnumMember(Value = "2")]
        Invitee = 2,

    }
}