class DestinyVendorRequirementDisplayEntryDefinition{
	String icon;
	String name;
	String source;
	String type;
	DestinyVendorRequirementDisplayEntryDefinition(
		String this.icon,
		String this.name,
		String this.source,
		String this.type,
	);

	static DestinyVendorRequirementDisplayEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorRequirementDisplayEntryDefinition(
				data['icon'],
				data['name'],
				data['source'],
				data['type'],
		);
	}

	static List<DestinyVendorRequirementDisplayEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorRequirementDisplayEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorRequirementDisplayEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['icon'] = icon;
			data['name'] = name;
			data['source'] = source;
			data['type'] = type;
	}
}