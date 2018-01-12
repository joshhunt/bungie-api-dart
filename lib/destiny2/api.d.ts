/**
 * Bungie.Net API
 * These endpoints constitute the functionality exposed by Bungie.net, both for more traditional website functionality and for connectivity to Bungie video games and their related functionality.
 *
 * OpenAPI spec version: 2.1.1
 * Contact: support@bungie.com
 *
 * NOTE: This class is auto generated by the bungie-api-ts code generator program.
 * https://github.com/DestinyItemManager/bugie-api-ts
 * Do not edit these files manually.
 */
import { HttpClient } from '../http';
import { BungieMembershipType, ServerResponse } from '../common';
import { DestinyActivityHistoryResults, DestinyActivityModeType, DestinyAggregateActivityResults, DestinyCharacterResponse, DestinyClanAggregateStat, DestinyComponentType, DestinyDefinition, DestinyEntitySearchResult, DestinyEquipItemResults, DestinyHistoricalStatsAccountResult, DestinyHistoricalStatsByPeriod, DestinyHistoricalStatsDefinition, DestinyHistoricalWeaponStatsData, DestinyItemActionRequest, DestinyItemResponse, DestinyItemSetActionRequest, DestinyItemStateRequest, DestinyItemTransferRequest, DestinyLeaderboard, DestinyManifest, DestinyMilestone, DestinyMilestoneContent, DestinyPostGameCarnageReportData, DestinyPostmasterTransferRequest, DestinyProfileResponse, DestinyPublicMilestone, DestinyReportOffensePgcrRequest, DestinyStatsGroupType, DestinyVendorResponse, DestinyVendorsResponse, PeriodType } from './interfaces';
import { UserInfoCard } from '../user/interfaces';
/** Returns the current version of the manifest as a json object. */
export declare function getDestinyManifest(http: HttpClient): Promise<ServerResponse<DestinyManifest>>;
export interface GetDestinyEntityDefinitionParams {
    /**
     * The type of entity for whom you would like results. These correspond to the
     * entity's definition contract name. For instance, if you are looking for items,
     * this property should be 'DestinyInventoryItemDefinition'. PREVIEW: This endpoint
     * is still in beta, and may experience rough edges. The schema is tentatively in
     * final form, but there may be bugs that prevent desirable operation.
     */
    entityType: string;
    /** The hash identifier for the specific Entity you want returned. */
    hashIdentifier: number;
}
/**
 * Returns the static definition of an entity of the given Type and hash identifier.
 * Examine the API Documentation for the Type Names of entities that have their
 * own definitions. Note that the return type will always *inherit from*
 * DestinyDefinition, but the specific type returned will be the requested entity
 * type if it can be found. Please don't use this as a chatty alternative to the
 * Manifest database if you require large sets of data, but for simple and one-off
 * accesses this should be handy.
 */
export declare function getDestinyEntityDefinition(http: HttpClient, params: GetDestinyEntityDefinitionParams): Promise<ServerResponse<DestinyDefinition>>;
export interface SearchDestinyPlayerParams {
    /** The full gamertag or PSN id of the player. Spaces and case are ignored. */
    displayName: string;
    /** A valid non-BungieNet membership type, or All. */
    membershipType: BungieMembershipType;
}
/** Returns a list of Destiny memberships given a full Gamertag or PSN ID. */
export declare function searchDestinyPlayer(http: HttpClient, params: SearchDestinyPlayerParams): Promise<ServerResponse<UserInfoCard[]>>;
export interface GetProfileParams {
    /**
     * A comma separated list of components to return (as strings or numeric values).
     * See the DestinyComponentType enum for valid components to request. You must
     * request at least one component to receive results.
     */
    components?: DestinyComponentType[];
    /** Destiny membership ID. */
    destinyMembershipId: string;
    /** A valid non-BungieNet membership type. */
    membershipType: BungieMembershipType;
}
/** Returns Destiny Profile information for the supplied membership. */
export declare function getProfile(http: HttpClient, params: GetProfileParams): Promise<ServerResponse<DestinyProfileResponse>>;
export interface GetCharacterParams {
    /** ID of the character. */
    characterId: string;
    /**
     * A comma separated list of components to return (as strings or numeric values).
     * See the DestinyComponentType enum for valid components to request. You must
     * request at least one component to receive results.
     */
    components?: DestinyComponentType[];
    /** Destiny membership ID. */
    destinyMembershipId: string;
    /** A valid non-BungieNet membership type. */
    membershipType: BungieMembershipType;
}
/** Returns character information for the supplied character. */
export declare function getCharacter(http: HttpClient, params: GetCharacterParams): Promise<ServerResponse<DestinyCharacterResponse>>;
export interface GetClanWeeklyRewardStateParams {
    /** A valid group id of clan. */
    groupId: string;
}
/**
 * Returns information on the weekly clan rewards and if the clan has earned them
 * or not. Note that this will always report rewards as not redeemed.
 */
export declare function getClanWeeklyRewardState(http: HttpClient, params: GetClanWeeklyRewardStateParams): Promise<ServerResponse<DestinyMilestone>>;
export interface GetItemParams {
    /**
     * A comma separated list of components to return (as strings or numeric values).
     * See the DestinyComponentType enum for valid components to request. You must
     * request at least one component to receive results.
     */
    components?: DestinyComponentType[];
    /** The membership ID of the destiny profile. */
    destinyMembershipId: string;
    /** The Instance ID of the destiny item. */
    itemInstanceId: string;
    /** A valid non-BungieNet membership type. */
    membershipType: BungieMembershipType;
}
/**
 * Retrieve the details of an instanced Destiny Item. An instanced Destiny item is
 * one with an ItemInstanceId. Non-instanced items, such as materials, have no
 * useful instance-specific details and thus are not queryable here.
 */
export declare function getItem(http: HttpClient, params: GetItemParams): Promise<ServerResponse<DestinyItemResponse>>;
export interface GetVendorsParams {
    /** The Destiny Character ID of the character for whom we're getting vendor info. */
    characterId: string;
    /**
     * A comma separated list of components to return (as strings or numeric values).
     * See the DestinyComponentType enum for valid components to request. You must
     * request at least one component to receive results.
     */
    components?: DestinyComponentType[];
    /** Destiny membership ID of another user. You may be denied. */
    destinyMembershipId: string;
    /** A valid non-BungieNet membership type. */
    membershipType: BungieMembershipType;
}
/**
 * Get currently available vendors from the list of vendors that can possibly have
 * rotating inventory. Note that this does not include things like preview vendors
 * and vendors-as-kiosks, neither of whom have rotating/dynamic inventories. Use
 * their definitions as-is for those. PREVIEW: This service is not yet active, but
 * we are returning the planned schema of the endpoint for review, comment, and
 * preparation for its eventual implementation.
 */
export declare function getVendors(http: HttpClient, params: GetVendorsParams): Promise<ServerResponse<DestinyVendorsResponse>>;
export interface GetVendorParams {
    /** The Destiny Character ID of the character for whom we're getting vendor info. */
    characterId: string;
    /**
     * A comma separated list of components to return (as strings or numeric values).
     * See the DestinyComponentType enum for valid components to request. You must
     * request at least one component to receive results.
     */
    components?: DestinyComponentType[];
    /** Destiny membership ID of another user. You may be denied. */
    destinyMembershipId: string;
    /** A valid non-BungieNet membership type. */
    membershipType: BungieMembershipType;
    /** The Hash identifier of the Vendor to be returned. */
    vendorHash: number;
}
/**
 * Get the details of a specific Vendor. PREVIEW: This service is not yet active,
 * but we are returning the planned schema of the endpoint for review, comment, and
 * preparation for its eventual implementation.
 */
export declare function getVendor(http: HttpClient, params: GetVendorParams): Promise<ServerResponse<DestinyVendorResponse>>;
export interface TransferItemParams {
    body: DestinyItemTransferRequest;
}
/**
 * Transfer an item to/from your vault. You must have a valid Destiny account. You
 * must also pass BOTH a reference AND an instance ID if it's an instanced item.
 * itshappening.gif
 */
export declare function transferItem(http: HttpClient, params: TransferItemParams): Promise<ServerResponse<number>>;
export interface PullFromPostmasterParams {
    body: DestinyPostmasterTransferRequest;
}
/**
 * Extract an item from the Postmaster, with whatever implications that may entail.
 * You must have a valid Destiny account. You must also pass BOTH a reference AND
 * an instance ID if it's an instanced item.
 */
export declare function pullFromPostmaster(http: HttpClient, params: PullFromPostmasterParams): Promise<ServerResponse<number>>;
export interface EquipItemParams {
    body: DestinyItemActionRequest;
}
/**
 * Equip an item. You must have a valid Destiny Account, and either be in a social
 * space, in orbit, or offline.
 */
export declare function equipItem(http: HttpClient, params: EquipItemParams): Promise<ServerResponse<number>>;
export interface EquipItemsParams {
    body: DestinyItemSetActionRequest;
}
/**
 * Equip a list of items by itemInstanceIds. You must have a valid Destiny Account,
 * and either be in a social space, in orbit, or offline. Any items not found on
 * your character will be ignored.
 */
export declare function equipItems(http: HttpClient, params: EquipItemsParams): Promise<ServerResponse<DestinyEquipItemResults>>;
export interface SetItemLockStateParams {
    body: DestinyItemStateRequest;
}
/** Set the Lock State for an instanced item. You must have a valid Destiny Account. */
export declare function setItemLockState(http: HttpClient, params: SetItemLockStateParams): Promise<ServerResponse<number>>;
export interface InsertSocketPlugParams {
    body: DestinyItemActionRequest;
}
/**
 * Insert a plug into a socketed item. I know how it sounds, but I assure you it's
 * much more G-rated than you might be guessing. We haven't decided yet whether
 * this will be able to insert plugs that have side effects, but if we do it will
 * require special scope permission for an application attempting to do so. You
 * must have a valid Destiny Account, and either be in a social space, in orbit, or
 * offline. PREVIEW: This service is not yet active, but we are returning the
 * planned schema of the endpoint for review, comment, and preparation for its
 * eventual implementation.
 */
export declare function insertSocketPlug(http: HttpClient, params: InsertSocketPlugParams): Promise<ServerResponse<number>>;
export interface ActivateTalentNodeParams {
    body: DestinyItemActionRequest;
}
/**
 * Activate a Talent Node. Chill out, everyone: we haven't decided yet whether this
 * will be able to activate nodes with costs, but if we do it will require special
 * scope permission for an application attempting to do so. You must have a valid
 * Destiny Account, and either be in a social space, in orbit, or offline. PREVIEW:
 * This service is not actually implemented yet, but we are returning the planned
 * schema of the endpoint for review, comment, and preparation for its eventual
 * implementation.
 */
export declare function activateTalentNode(http: HttpClient, params: ActivateTalentNodeParams): Promise<ServerResponse<number>>;
export interface GetPostGameCarnageReportParams {
    /** The ID of the activity whose PGCR is requested. */
    activityId: string;
}
/** Gets the available post game carnage report for the activity ID. */
export declare function getPostGameCarnageReport(http: HttpClient, params: GetPostGameCarnageReportParams): Promise<ServerResponse<DestinyPostGameCarnageReportData>>;
export interface ReportOffensivePostGameCarnageReportPlayerParams {
    /** The ID of the activity where you ran into the brigand that you're reporting. */
    activityId: string;
    body: DestinyReportOffensePgcrRequest;
}
/**
 * Report a player that you met in an activity that was engaging in ToS-violating
 * activities. Both you and the offending player must have played in the activityId
 * passed in. Please use this judiciously and only when you have strong suspicions
 * of violation, pretty please.
 */
export declare function reportOffensivePostGameCarnageReportPlayer(http: HttpClient, params: ReportOffensivePostGameCarnageReportPlayerParams): Promise<ServerResponse<number>>;
/** Gets historical stats definitions. */
export declare function getHistoricalStatsDefinition(http: HttpClient): Promise<ServerResponse<{
    [key: string]: DestinyHistoricalStatsDefinition;
}>>;
export interface GetClanLeaderboardsParams {
    /** Group ID of the clan whose leaderboards you wish to fetch. */
    groupId: string;
    /**
     * Maximum number of top players to return. Use a large number to get entire
     * leaderboard.
     */
    maxtop?: number;
    /**
     * List of game modes for which to get leaderboards. See the documentation for
     * DestinyActivityModeType for valid values, and pass in string representation,
     * comma delimited.
     */
    modes?: string;
    /** ID of stat to return rather than returning all Leaderboard stats. */
    statid?: string;
}
/**
 * Gets leaderboards with the signed in user's friends and the supplied
 * destinyMembershipId as the focus. PREVIEW: This endpoint is still in beta, and
 * may experience rough edges. The schema is in final form, but there may be bugs
 * that prevent desirable operation.
 */
export declare function getClanLeaderboards(http: HttpClient, params: GetClanLeaderboardsParams): Promise<ServerResponse<{
    [key: string]: {
        [key: string]: DestinyLeaderboard;
    };
}>>;
export interface GetClanAggregateStatsParams {
    /** Group ID of the clan whose leaderboards you wish to fetch. */
    groupId: string;
    /**
     * List of game modes for which to get leaderboards. See the documentation for
     * DestinyActivityModeType for valid values, and pass in string representation,
     * comma delimited.
     */
    modes?: string;
}
/**
 * Gets aggregated stats for a clan using the same categories as the clan
 * leaderboards. PREVIEW: This endpoint is still in beta, and may experience rough
 * edges. The schema is in final form, but there may be bugs that prevent desirable
 * operation.
 */
export declare function getClanAggregateStats(http: HttpClient, params: GetClanAggregateStatsParams): Promise<ServerResponse<DestinyClanAggregateStat[]>>;
export interface GetLeaderboardsParams {
    /** The Destiny membershipId of the user to retrieve. */
    destinyMembershipId: string;
    /**
     * Maximum number of top players to return. Use a large number to get entire
     * leaderboard.
     */
    maxtop?: number;
    /** A valid non-BungieNet membership type. */
    membershipType: BungieMembershipType;
    /**
     * List of game modes for which to get leaderboards. See the documentation for
     * DestinyActivityModeType for valid values, and pass in string representation,
     * comma delimited.
     */
    modes?: string;
    /** ID of stat to return rather than returning all Leaderboard stats. */
    statid?: string;
}
/**
 * Gets leaderboards with the signed in user's friends and the supplied
 * destinyMembershipId as the focus. PREVIEW: This endpoint has not yet been
 * implemented. It is being returned for a preview of future functionality, and for
 * public comment/suggestion/preparation.
 */
export declare function getLeaderboards(http: HttpClient, params: GetLeaderboardsParams): Promise<ServerResponse<{
    [key: string]: {
        [key: string]: DestinyLeaderboard;
    };
}>>;
export interface GetLeaderboardsForCharacterParams {
    /**
     * The specific character to build the leaderboard around for the provided Destiny
     * Membership.
     */
    characterId: string;
    /** The Destiny membershipId of the user to retrieve. */
    destinyMembershipId: string;
    /**
     * Maximum number of top players to return. Use a large number to get entire
     * leaderboard.
     */
    maxtop?: number;
    /** A valid non-BungieNet membership type. */
    membershipType: BungieMembershipType;
    /**
     * List of game modes for which to get leaderboards. See the documentation for
     * DestinyActivityModeType for valid values, and pass in string representation,
     * comma delimited.
     */
    modes?: string;
    /** ID of stat to return rather than returning all Leaderboard stats. */
    statid?: string;
}
/**
 * Gets leaderboards with the signed in user's friends and the supplied
 * destinyMembershipId as the focus. PREVIEW: This endpoint is still in beta, and
 * may experience rough edges. The schema is in final form, but there may be bugs
 * that prevent desirable operation.
 */
export declare function getLeaderboardsForCharacter(http: HttpClient, params: GetLeaderboardsForCharacterParams): Promise<ServerResponse<{
    [key: string]: {
        [key: string]: DestinyLeaderboard;
    };
}>>;
export interface SearchDestinyEntitiesParams {
    /** Page number to return, starting with 0. */
    page?: number;
    /** The string to use when searching for Destiny entities. */
    searchTerm: string;
    /**
     * The type of entity for whom you would like results. These correspond to the
     * entity's definition contract name. For instance, if you are looking for items,
     * this property should be 'DestinyInventoryItemDefinition'.
     */
    type: string;
}
/** Gets a page list of Destiny items. */
export declare function searchDestinyEntities(http: HttpClient, params: SearchDestinyEntitiesParams): Promise<ServerResponse<DestinyEntitySearchResult>>;
export interface GetHistoricalStatsParams {
    /**
     * The id of the character to retrieve. You can omit this character ID or set it to
     * 0 to get aggregate stats across all characters.
     */
    characterId: string;
    /** Last day to return when daily stats are requested. Use the format YYYY-MM-DD. */
    dayend?: string;
    /** First day to return when daily stats are requested. Use the format YYYY-MM-DD */
    daystart?: string;
    /** The Destiny membershipId of the user to retrieve. */
    destinyMembershipId: string;
    /**
     * Group of stats to include, otherwise only general stats are returned. Comma
     * separated list is allowed. Values: General, Weapons, Medals
     */
    groups?: DestinyStatsGroupType[];
    /** A valid non-BungieNet membership type. */
    membershipType: BungieMembershipType;
    /**
     * Game modes to return. See the documentation for DestinyActivityModeType for
     * valid values, and pass in string representation, comma delimited.
     */
    modes?: DestinyActivityModeType[];
    /**
     * Indicates a specific period type to return. Optional. May be: Daily, AllTime, or
     * Activity
     */
    periodType?: PeriodType;
}
/** Gets historical stats for indicated character. */
export declare function getHistoricalStats(http: HttpClient, params: GetHistoricalStatsParams): Promise<ServerResponse<{
    [key: string]: DestinyHistoricalStatsByPeriod;
}>>;
export interface GetHistoricalStatsForAccountParams {
    /** The Destiny membershipId of the user to retrieve. */
    destinyMembershipId: string;
    /**
     * Groups of stats to include, otherwise only general stats are returned. Comma
     * separated list is allowed. Values: General, Weapons, Medals.
     */
    groups?: DestinyStatsGroupType[];
    /** A valid non-BungieNet membership type. */
    membershipType: BungieMembershipType;
}
/**
 * Gets aggregate historical stats organized around each character for a given
 * account.
 */
export declare function getHistoricalStatsForAccount(http: HttpClient, params: GetHistoricalStatsForAccountParams): Promise<ServerResponse<DestinyHistoricalStatsAccountResult>>;
export interface GetActivityHistoryParams {
    /** The id of the character to retrieve. */
    characterId: string;
    /** Number of rows to return */
    count?: number;
    /** The Destiny membershipId of the user to retrieve. */
    destinyMembershipId: string;
    /** A valid non-BungieNet membership type. */
    membershipType: BungieMembershipType;
    /**
     * A filter for the activity mode to be returned. None returns all activities. See
     * the documentation for DestinyActivityModeType for valid values, and pass in
     * string representation.
     */
    mode?: DestinyActivityModeType;
    /** Page number to return, starting with 0. */
    page?: number;
}
/** Gets activity history stats for indicated character. */
export declare function getActivityHistory(http: HttpClient, params: GetActivityHistoryParams): Promise<ServerResponse<DestinyActivityHistoryResults>>;
export interface GetUniqueWeaponHistoryParams {
    /** The id of the character to retrieve. */
    characterId: string;
    /** The Destiny membershipId of the user to retrieve. */
    destinyMembershipId: string;
    /** A valid non-BungieNet membership type. */
    membershipType: BungieMembershipType;
}
/** Gets details about unique weapon usage, including all exotic weapons. */
export declare function getUniqueWeaponHistory(http: HttpClient, params: GetUniqueWeaponHistoryParams): Promise<ServerResponse<DestinyHistoricalWeaponStatsData>>;
export interface GetDestinyAggregateActivityStatsParams {
    /** The specific character whose activities should be returned. */
    characterId: string;
    /** The Destiny membershipId of the user to retrieve. */
    destinyMembershipId: string;
    /** A valid non-BungieNet membership type. */
    membershipType: BungieMembershipType;
}
/**
 * Gets all activities the character has participated in together with aggregate
 * statistics for those activities.
 */
export declare function getDestinyAggregateActivityStats(http: HttpClient, params: GetDestinyAggregateActivityStatsParams): Promise<ServerResponse<DestinyAggregateActivityResults>>;
export interface GetPublicMilestoneContentParams {
    /** The identifier for the milestone to be returned. */
    milestoneHash: number;
}
/** Gets custom localized content for the milestone of the given hash, if it exists. */
export declare function getPublicMilestoneContent(http: HttpClient, params: GetPublicMilestoneContentParams): Promise<ServerResponse<DestinyMilestoneContent>>;
/** Gets public information about currently available Milestones. */
export declare function getPublicMilestones(http: HttpClient): Promise<ServerResponse<{
    [key: number]: DestinyPublicMilestone;
}>>;
