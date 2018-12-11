class DestinyItemSetActionRequest{
	List<int> itemIds;
	int characterId;
	int membershipType;
	DestinyItemSetActionRequest(
		List<int> this.itemIds,
		int this.characterId,
		int this.membershipType,
	);

	static DestinyItemSetActionRequest fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSetActionRequest(
				data['itemIds'],
				data['characterId'],
				data['membershipType'],
		);
	}

	static List<DestinyItemSetActionRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSetActionRequest> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSetActionRequest.fromJson(item));
    });
    return list;
	}
}