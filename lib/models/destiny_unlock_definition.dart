import 'destiny_display_properties_definition.dart';
class DestinyUnlockDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int hash;
	int index;
	bool redacted;
	DestinyUnlockDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyUnlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyUnlockDefinition(
				data['displayProperties'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyUnlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyUnlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyUnlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = displayProperties;
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}