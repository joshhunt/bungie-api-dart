class DestinyVendorGroupReference{
	int vendorGroupHash;
	DestinyVendorGroupReference(
		int this.vendorGroupHash,
	);

	static DestinyVendorGroupReference fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorGroupReference(
				data['vendorGroupHash'],
		);
	}

	static List<DestinyVendorGroupReference> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorGroupReference> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorGroupReference.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorGroupHash'] = vendorGroupHash;
	}
}