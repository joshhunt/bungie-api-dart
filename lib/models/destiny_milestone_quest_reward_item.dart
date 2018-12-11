class DestinyMilestoneQuestRewardItem{
	int vendorHash;
	int vendorItemIndex;
	int itemHash;
	int itemInstanceId;
	int quantity;
	DestinyMilestoneQuestRewardItem(
		int this.vendorHash,
		int this.vendorItemIndex,
		int this.itemHash,
		int this.itemInstanceId,
		int this.quantity,
	);

	static DestinyMilestoneQuestRewardItem fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneQuestRewardItem(
				data['vendorHash'],
				data['vendorItemIndex'],
				data['itemHash'],
				data['itemInstanceId'],
				data['quantity'],
		);
	}

	static List<DestinyMilestoneQuestRewardItem> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneQuestRewardItem> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneQuestRewardItem.fromJson(item));
    });
    return list;
	}
}