import 'destiny_item_stats_component.dart';
class DictionaryComponentResponseOfint32AndDestinyItemStatsComponent{
	Map<DestinyItemStatsComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyItemStatsComponent(
		Map<DestinyItemStatsComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint32AndDestinyItemStatsComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint32AndDestinyItemStatsComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint32AndDestinyItemStatsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint32AndDestinyItemStatsComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint32AndDestinyItemStatsComponent.fromJson(item));
    });
    return list;
	}
}