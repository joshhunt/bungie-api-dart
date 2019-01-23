import 'destiny_item_talent_grid_component.dart';

/**  */
class DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent{
	
	/**  */
	Map<String, DestinyItemTalentGridComponent> data;
	
	/** A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons. */
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent(
				data['data'] != null ? Map<String, DestinyItemTalentGridComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyItemTalentGridComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = this.data != null? this.data.map((i, v)=>MapEntry(i, v.toMap())) : null;
			data['privacy'] = this.privacy;
		return data;
	}
}