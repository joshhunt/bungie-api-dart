class AwaPermissionRequested{
	int type;
	int affectedItemId;
	int membershipType;
	int characterId;
	AwaPermissionRequested(
		int this.type,
		int this.affectedItemId,
		int this.membershipType,
		int this.characterId,
	);

	static AwaPermissionRequested fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new AwaPermissionRequested(
				data['type'],
				data['affectedItemId'],
				data['membershipType'],
				data['characterId'],
		);
	}

	static List<AwaPermissionRequested> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<AwaPermissionRequested> list = new List();
    data.forEach((item) {
      list.add(AwaPermissionRequested.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['type'] = type;
			data['affectedItemId'] = affectedItemId;
			data['membershipType'] = membershipType;
			data['characterId'] = characterId;
	}
}