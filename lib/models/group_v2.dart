import 'group_features.dart';
import 'group_v2_clan_info_and_investment.dart';
class GroupV2{
	int groupId;
	String name;
	int groupType;
	int membershipIdCreated;
	String creationDate;
	String modificationDate;
	String about;
	List<String> tags;
	int memberCount;
	bool isPublic;
	bool isPublicTopicAdminOnly;
	String motto;
	bool allowChat;
	bool isDefaultPostPublic;
	int chatSecurity;
	String locale;
	int avatarImageIndex;
	int homepage;
	int membershipOption;
	int defaultPublicity;
	String theme;
	String bannerPath;
	String avatarPath;
	int conversationId;
	bool enableInvitationMessagingForAdmins;
	String banExpireDate;
	GroupFeatures features;
	GroupV2ClanInfoAndInvestment clanInfo;
	GroupV2(
		int this.groupId,
		String this.name,
		int this.groupType,
		int this.membershipIdCreated,
		String this.creationDate,
		String this.modificationDate,
		String this.about,
		List<String> this.tags,
		int this.memberCount,
		bool this.isPublic,
		bool this.isPublicTopicAdminOnly,
		String this.motto,
		bool this.allowChat,
		bool this.isDefaultPostPublic,
		int this.chatSecurity,
		String this.locale,
		int this.avatarImageIndex,
		int this.homepage,
		int this.membershipOption,
		int this.defaultPublicity,
		String this.theme,
		String this.bannerPath,
		String this.avatarPath,
		int this.conversationId,
		bool this.enableInvitationMessagingForAdmins,
		String this.banExpireDate,
		GroupFeatures this.features,
		GroupV2ClanInfoAndInvestment this.clanInfo,
	);

	static GroupV2 fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupV2(
				data['groupId'],
				data['name'],
				data['groupType'],
				data['membershipIdCreated'],
				data['creationDate'],
				data['modificationDate'],
				data['about'],
				data['tags'],
				data['memberCount'],
				data['isPublic'],
				data['isPublicTopicAdminOnly'],
				data['motto'],
				data['allowChat'],
				data['isDefaultPostPublic'],
				data['chatSecurity'],
				data['locale'],
				data['avatarImageIndex'],
				data['homepage'],
				data['membershipOption'],
				data['defaultPublicity'],
				data['theme'],
				data['bannerPath'],
				data['avatarPath'],
				data['conversationId'],
				data['enableInvitationMessagingForAdmins'],
				data['banExpireDate'],
				GroupFeatures.fromMap(data['features']),
				GroupV2ClanInfoAndInvestment.fromMap(data['clanInfo']),
		);
	}

	static List<GroupV2> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupV2> list = new List();
    data.forEach((item) {
      list.add(GroupV2.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['groupId'] = groupId;
			data['name'] = name;
			data['groupType'] = groupType;
			data['membershipIdCreated'] = membershipIdCreated;
			data['creationDate'] = creationDate;
			data['modificationDate'] = modificationDate;
			data['about'] = about;
			data['tags'] = tags;
			data['memberCount'] = memberCount;
			data['isPublic'] = isPublic;
			data['isPublicTopicAdminOnly'] = isPublicTopicAdminOnly;
			data['motto'] = motto;
			data['allowChat'] = allowChat;
			data['isDefaultPostPublic'] = isDefaultPostPublic;
			data['chatSecurity'] = chatSecurity;
			data['locale'] = locale;
			data['avatarImageIndex'] = avatarImageIndex;
			data['homepage'] = homepage;
			data['membershipOption'] = membershipOption;
			data['defaultPublicity'] = defaultPublicity;
			data['theme'] = theme;
			data['bannerPath'] = bannerPath;
			data['avatarPath'] = avatarPath;
			data['conversationId'] = conversationId;
			data['enableInvitationMessagingForAdmins'] = enableInvitationMessagingForAdmins;
			data['banExpireDate'] = banExpireDate;
			data['features'] = features.toMap();
			data['clanInfo'] = clanInfo.toMap();
	}
}