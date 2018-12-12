class DestinyVendorInventoryFlyoutBucketDefinition{
	bool collapsible;
	int inventoryBucketHash;
	int sortItemsBy;
	DestinyVendorInventoryFlyoutBucketDefinition(
		bool this.collapsible,
		int this.inventoryBucketHash,
		int this.sortItemsBy,
	);

	static DestinyVendorInventoryFlyoutBucketDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorInventoryFlyoutBucketDefinition(
				data['collapsible'],
				data['inventoryBucketHash'],
				data['sortItemsBy'],
		);
	}

	static List<DestinyVendorInventoryFlyoutBucketDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorInventoryFlyoutBucketDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorInventoryFlyoutBucketDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['collapsible'] = collapsible;
			data['inventoryBucketHash'] = inventoryBucketHash;
			data['sortItemsBy'] = sortItemsBy;
	}
}