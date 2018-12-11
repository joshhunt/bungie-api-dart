import 'destiny_milestone_activity_variant_definition.dart';
class DestinyMilestoneActivityDefinition{
	int conceptualActivityHash;
	Map<DestinyMilestoneActivityVariantDefinition, dynamic> variants;
	DestinyMilestoneActivityDefinition(
		int this.conceptualActivityHash,
		Map<DestinyMilestoneActivityVariantDefinition, dynamic> this.variants,
	);

	static DestinyMilestoneActivityDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneActivityDefinition(
				data['conceptualActivityHash'],
				data['variants'],
		);
	}

	static List<DestinyMilestoneActivityDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneActivityDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneActivityDefinition.fromJson(item));
    });
    return list;
	}
}