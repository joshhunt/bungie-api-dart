class GroupOptionsEditAction{
	bool invitePermissionOverride;
	bool updateCulturePermissionOverride;
	int hostGuidedGamePermissionOverride;
	bool updateBannerPermissionOverride;
	int joinLevel;
	GroupOptionsEditAction(
		bool this.invitePermissionOverride,
		bool this.updateCulturePermissionOverride,
		int this.hostGuidedGamePermissionOverride,
		bool this.updateBannerPermissionOverride,
		int this.joinLevel,
	);

	static GroupOptionsEditAction fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupOptionsEditAction(
				data['InvitePermissionOverride'],
				data['UpdateCulturePermissionOverride'],
				data['HostGuidedGamePermissionOverride'],
				data['UpdateBannerPermissionOverride'],
				data['JoinLevel'],
		);
	}

	static List<GroupOptionsEditAction> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupOptionsEditAction> list = new List();
    data.forEach((item) {
      list.add(GroupOptionsEditAction.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['InvitePermissionOverride'] = invitePermissionOverride;
			data['UpdateCulturePermissionOverride'] = updateCulturePermissionOverride;
			data['HostGuidedGamePermissionOverride'] = hostGuidedGamePermissionOverride;
			data['UpdateBannerPermissionOverride'] = updateBannerPermissionOverride;
			data['JoinLevel'] = joinLevel;
	}
}