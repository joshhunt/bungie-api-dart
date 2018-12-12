import 'destiny_display_properties_definition.dart';
class DestinyActivityModeDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	String pgcrImage;
	int modeType;
	int activityModeCategory;
	bool isTeamBased;
	bool isAggregateMode;
	List<int> parentHashes;
	String friendlyName;
	Map<int, dynamic> activityModeMappings;
	bool display;
	int order;
	int hash;
	int index;
	bool redacted;
	DestinyActivityModeDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		String this.pgcrImage,
		int this.modeType,
		int this.activityModeCategory,
		bool this.isTeamBased,
		bool this.isAggregateMode,
		List<int> this.parentHashes,
		String this.friendlyName,
		Map<int, dynamic> this.activityModeMappings,
		bool this.display,
		int this.order,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyActivityModeDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityModeDefinition(
				DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']),
				data['pgcrImage'],
				data['modeType'],
				data['activityModeCategory'],
				data['isTeamBased'],
				data['isAggregateMode'],
				data['parentHashes'],
				data['friendlyName'],
				data['activityModeMappings'],
				data['display'],
				data['order'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyActivityModeDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityModeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityModeDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = displayProperties.toMap();
			data['pgcrImage'] = pgcrImage;
			data['modeType'] = modeType;
			data['activityModeCategory'] = activityModeCategory;
			data['isTeamBased'] = isTeamBased;
			data['isAggregateMode'] = isAggregateMode;
			data['parentHashes'] = parentHashes;
			data['friendlyName'] = friendlyName;
			data['activityModeMappings'] = activityModeMappings;
			data['display'] = display;
			data['order'] = order;
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}