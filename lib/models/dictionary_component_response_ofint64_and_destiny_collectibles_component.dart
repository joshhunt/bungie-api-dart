import 'destiny_collectibles_component.dart';
class DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent{
	Map<DestinyCollectiblesComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent(
		Map<DestinyCollectiblesComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = data;
			data['privacy'] = privacy;
	}
}