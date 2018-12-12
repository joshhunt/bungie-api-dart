class ContentTypePropertySection{
	String name;
	String readableName;
	bool collapsed;
	ContentTypePropertySection(
		String this.name,
		String this.readableName,
		bool this.collapsed,
	);

	static ContentTypePropertySection fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ContentTypePropertySection(
				data['name'],
				data['readableName'],
				data['collapsed'],
		);
	}

	static List<ContentTypePropertySection> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ContentTypePropertySection> list = new List();
    data.forEach((item) {
      list.add(ContentTypePropertySection.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['name'] = name;
			data['readableName'] = readableName;
			data['collapsed'] = collapsed;
	}
}