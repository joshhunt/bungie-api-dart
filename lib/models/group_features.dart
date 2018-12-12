class GroupFeatures{
	int maximumMembers;
	int maximumMembershipsOfGroupType;
	int capabilities;
	List<int> membershipTypes;
	bool invitePermissionOverride;
	bool updateCulturePermissionOverride;
	int hostGuidedGamePermissionOverride;
	bool updateBannerPermissionOverride;
	int joinLevel;
	GroupFeatures(
		int this.maximumMembers,
		int this.maximumMembershipsOfGroupType,
		int this.capabilities,
		List<int> this.membershipTypes,
		bool this.invitePermissionOverride,
		bool this.updateCulturePermissionOverride,
		int this.hostGuidedGamePermissionOverride,
		bool this.updateBannerPermissionOverride,
		int this.joinLevel,
	);

	static GroupFeatures fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupFeatures(
				data['maximumMembers'],
				data['maximumMembershipsOfGroupType'],
				data['capabilities'],
				data['membershipTypes'],
				data['invitePermissionOverride'],
				data['updateCulturePermissionOverride'],
				data['hostGuidedGamePermissionOverride'],
				data['updateBannerPermissionOverride'],
				data['joinLevel'],
		);
	}

	static List<GroupFeatures> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupFeatures> list = new List();
    data.forEach((item) {
      list.add(GroupFeatures.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['maximumMembers'] = maximumMembers;
			data['maximumMembershipsOfGroupType'] = maximumMembershipsOfGroupType;
			data['capabilities'] = capabilities;
			data['membershipTypes'] = membershipTypes;
			data['invitePermissionOverride'] = invitePermissionOverride;
			data['updateCulturePermissionOverride'] = updateCulturePermissionOverride;
			data['hostGuidedGamePermissionOverride'] = hostGuidedGamePermissionOverride;
			data['updateBannerPermissionOverride'] = updateBannerPermissionOverride;
			data['joinLevel'] = joinLevel;
	}
}