using System.Runtime.Serialization;
using System.Collections.Generic;
using System.Linq;

namespace GhostSharper.Models
{
    /// <summary>
    /// This component returns anything that could be considered "Progression" on a user: data where the user is gaining levels, reputation, completions, rewards, etc...
    /// </summary>
    [DataContract]
    public class DestinyCharacterProgressionComponent
    {
        /// <summary>
        /// A Dictionary of all known progressions for the Character, keyed by the Progression's hash.
        /// </summary>
        /// <summary>
        /// Not all progressions have user-facing data, but those who do will have that data contained in the DestinyProgressionDefinition.
        /// </summary>
        [DataMember(Name = "progressions", EmitDefaultValue = false)]
        public Dictionary<string, DestinyProgression> Progressions { get; set; }

        /// <summary>
        /// A dictionary of all known Factions, keyed by the Faction's hash. It contains data about this character's status with the faction.
        /// </summary>
        [DataMember(Name = "factions", EmitDefaultValue = false)]
        public Dictionary<string, DestinyFactionProgression> Factions { get; set; }

        /// <summary>
        /// Milestones are related to the simple progressions shown in the game, but return additional and hopefully helpful information for users about the specifics of the Milestone's status.
        /// </summary>
        [DataMember(Name = "milestones", EmitDefaultValue = false)]
        public Dictionary<string, DestinyMilestone> Milestones { get; set; }

        /// <summary>
        /// If the user has any active quests, the quests' statuses will be returned here.
        /// </summary>
        /// <summary>
        ///  Note that quests have been largely supplanted by Milestones, but that doesn't mean that they won't make a comeback independent of milestones at some point.
        /// </summary>
        /// <summary>
        ///  (Fun fact: quests came back as I feared they would, but we never looped back to populate this... I'm going to put that in the backlog.)
        /// </summary>
        [DataMember(Name = "quests", EmitDefaultValue = false)]
        public List<DestinyQuestStatus> Quests { get; set; }

        /// <summary>
        /// Sometimes, you have items in your inventory that don't have instances, but still have Objective information. This provides you that objective information for uninstanced items. 
        /// </summary>
        /// <summary>
        /// This dictionary is keyed by the item's hash: which you can use to look up the name and description for the overall task(s) implied by the objective. The value is the list of objectives for this item, and their statuses.
        /// </summary>
        [DataMember(Name = "uninstancedItemObjectives", EmitDefaultValue = false)]
        public Dictionary<string, List<DestinyObjectiveProgress>> UninstancedItemObjectives { get; set; }

        /// <summary>
        /// The set of checklists that can be examined for this specific character, keyed by the hash identifier of the Checklist (DestinyChecklistDefinition)
        /// </summary>
        /// <summary>
        /// For each checklist returned, its value is itself a Dictionary keyed by the checklist's hash identifier with the value being a boolean indicating if it's been discovered yet.
        /// </summary>
        [DataMember(Name = "checklists", EmitDefaultValue = false)]
        public Dictionary<string, Dictionary<string, bool>> Checklists { get; set; }

        /// <summary>
        /// Data related to your progress on the current season's artifact that can vary per character.
        /// </summary>
        [DataMember(Name = "seasonalArtifact", EmitDefaultValue = false)]
        public DestinyArtifactCharacterScoped SeasonalArtifact { get; set; }


        public override bool Equals(object input)
        {
            return this.Equals(input as DestinyCharacterProgressionComponent);
        }

        public bool Equals(DestinyCharacterProgressionComponent input)
        {
            if (input == null) return false;

            return
                (
                    Progressions == input.Progressions ||
                    (Progressions != null && Progressions.SequenceEqual(input.Progressions))
                ) &&
                (
                    Factions == input.Factions ||
                    (Factions != null && Factions.SequenceEqual(input.Factions))
                ) &&
                (
                    Milestones == input.Milestones ||
                    (Milestones != null && Milestones.SequenceEqual(input.Milestones))
                ) &&
                (
                    Quests == input.Quests ||
                    (Quests != null && Quests.SequenceEqual(input.Quests))
                ) &&
                (
                    UninstancedItemObjectives == input.UninstancedItemObjectives ||
                    (UninstancedItemObjectives != null && UninstancedItemObjectives.SequenceEqual(input.UninstancedItemObjectives))
                ) &&
                (
                    Checklists == input.Checklists ||
                    (Checklists != null && Checklists.SequenceEqual(input.Checklists))
                ) &&
                (
                    SeasonalArtifact == input.SeasonalArtifact ||
                    (SeasonalArtifact != null && SeasonalArtifact.Equals(input.SeasonalArtifact))
                ) ;
        }
    }
}

