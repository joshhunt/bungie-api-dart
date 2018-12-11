import 'destiny_historical_stats_value.dart';
class DestinyAggregateActivityStats{
	int activityHash;
	Map<DestinyHistoricalStatsValue, dynamic> values;
	DestinyAggregateActivityStats(
		int this.activityHash,
		Map<DestinyHistoricalStatsValue, dynamic> this.values,
	);

	static DestinyAggregateActivityStats fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyAggregateActivityStats(
				data['activityHash'],
				data['values'],
		);
	}

	static List<DestinyAggregateActivityStats> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyAggregateActivityStats> list = new List();
    data.forEach((item) {
      list.add(DestinyAggregateActivityStats.fromJson(item));
    });
    return list;
	}
}