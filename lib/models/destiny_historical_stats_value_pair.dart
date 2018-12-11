class DestinyHistoricalStatsValuePair{
	int value;
	String displayValue;
	DestinyHistoricalStatsValuePair(
		int this.value,
		String this.displayValue,
	);

	static DestinyHistoricalStatsValuePair fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalStatsValuePair(
				data['value'],
				data['displayValue'],
		);
	}

	static List<DestinyHistoricalStatsValuePair> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalStatsValuePair> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsValuePair.fromJson(item));
    });
    return list;
	}
}