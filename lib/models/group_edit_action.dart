class GroupEditAction{
	String name;
	String about;
	String motto;
	String theme;
	int avatarImageIndex;
	String tags;
	bool isPublic;
	int membershipOption;
	bool isPublicTopicAdminOnly;
	bool allowChat;
	int chatSecurity;
	String callsign;
	String locale;
	int homepage;
	bool enableInvitationMessagingForAdmins;
	int defaultPublicity;
	GroupEditAction(
		String this.name,
		String this.about,
		String this.motto,
		String this.theme,
		int this.avatarImageIndex,
		String this.tags,
		bool this.isPublic,
		int this.membershipOption,
		bool this.isPublicTopicAdminOnly,
		bool this.allowChat,
		int this.chatSecurity,
		String this.callsign,
		String this.locale,
		int this.homepage,
		bool this.enableInvitationMessagingForAdmins,
		int this.defaultPublicity,
	);

	static GroupEditAction fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupEditAction(
				data['name'],
				data['about'],
				data['motto'],
				data['theme'],
				data['avatarImageIndex'],
				data['tags'],
				data['isPublic'],
				data['membershipOption'],
				data['isPublicTopicAdminOnly'],
				data['allowChat'],
				data['chatSecurity'],
				data['callsign'],
				data['locale'],
				data['homepage'],
				data['enableInvitationMessagingForAdmins'],
				data['defaultPublicity'],
		);
	}

	static List<GroupEditAction> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupEditAction> list = new List();
    data.forEach((item) {
      list.add(GroupEditAction.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['name'] = name;
			data['about'] = about;
			data['motto'] = motto;
			data['theme'] = theme;
			data['avatarImageIndex'] = avatarImageIndex;
			data['tags'] = tags;
			data['isPublic'] = isPublic;
			data['membershipOption'] = membershipOption;
			data['isPublicTopicAdminOnly'] = isPublicTopicAdminOnly;
			data['allowChat'] = allowChat;
			data['chatSecurity'] = chatSecurity;
			data['callsign'] = callsign;
			data['locale'] = locale;
			data['homepage'] = homepage;
			data['enableInvitationMessagingForAdmins'] = enableInvitationMessagingForAdmins;
			data['defaultPublicity'] = defaultPublicity;
	}
}