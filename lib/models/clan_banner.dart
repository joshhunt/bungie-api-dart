class ClanBanner{
	int decalId;
	int decalColorId;
	int decalBackgroundColorId;
	int gonfalonId;
	int gonfalonColorId;
	int gonfalonDetailId;
	int gonfalonDetailColorId;
	ClanBanner(
		int this.decalId,
		int this.decalColorId,
		int this.decalBackgroundColorId,
		int this.gonfalonId,
		int this.gonfalonColorId,
		int this.gonfalonDetailId,
		int this.gonfalonDetailColorId,
	);

	static ClanBanner fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ClanBanner(
				data['decalId'],
				data['decalColorId'],
				data['decalBackgroundColorId'],
				data['gonfalonId'],
				data['gonfalonColorId'],
				data['gonfalonDetailId'],
				data['gonfalonDetailColorId'],
		);
	}

	static List<ClanBanner> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ClanBanner> list = new List();
    data.forEach((item) {
      list.add(ClanBanner.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['decalId'] = decalId;
			data['decalColorId'] = decalColorId;
			data['decalBackgroundColorId'] = decalBackgroundColorId;
			data['gonfalonId'] = gonfalonId;
			data['gonfalonColorId'] = gonfalonColorId;
			data['gonfalonDetailId'] = gonfalonDetailId;
			data['gonfalonDetailColorId'] = gonfalonDetailColorId;
	}
}