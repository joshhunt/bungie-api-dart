class DestinyReportOffensePgcrRequest{
	List<int> reasonCategoryHashes;
	List<int> reasonHashes;
	int offendingCharacterId;
	DestinyReportOffensePgcrRequest(
		List<int> this.reasonCategoryHashes,
		List<int> this.reasonHashes,
		int this.offendingCharacterId,
	);

	static DestinyReportOffensePgcrRequest fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyReportOffensePgcrRequest(
				data['reasonCategoryHashes'],
				data['reasonHashes'],
				data['offendingCharacterId'],
		);
	}

	static List<DestinyReportOffensePgcrRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyReportOffensePgcrRequest> list = new List();
    data.forEach((item) {
      list.add(DestinyReportOffensePgcrRequest.fromJson(item));
    });
    return list;
	}
}