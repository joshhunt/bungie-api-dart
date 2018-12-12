import 'destiny_item_action_required_item_definition.dart';
import 'destiny_progression_reward_definition.dart';
class DestinyItemActionBlockDefinition{
	String verbName;
	String verbDescription;
	bool isPositive;
	String overlayScreenName;
	String overlayIcon;
	int requiredCooldownSeconds;
	List<DestinyItemActionRequiredItemDefinition> requiredItems;
	List<DestinyProgressionRewardDefinition> progressionRewards;
	String actionTypeLabel;
	String requiredLocation;
	int requiredCooldownHash;
	bool deleteOnAction;
	bool consumeEntireStack;
	bool useOnAcquire;
	DestinyItemActionBlockDefinition(
		String this.verbName,
		String this.verbDescription,
		bool this.isPositive,
		String this.overlayScreenName,
		String this.overlayIcon,
		int this.requiredCooldownSeconds,
		List<DestinyItemActionRequiredItemDefinition> this.requiredItems,
		List<DestinyProgressionRewardDefinition> this.progressionRewards,
		String this.actionTypeLabel,
		String this.requiredLocation,
		int this.requiredCooldownHash,
		bool this.deleteOnAction,
		bool this.consumeEntireStack,
		bool this.useOnAcquire,
	);

	static DestinyItemActionBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemActionBlockDefinition(
				data['verbName'],
				data['verbDescription'],
				data['isPositive'],
				data['overlayScreenName'],
				data['overlayIcon'],
				data['requiredCooldownSeconds'],
				DestinyItemActionRequiredItemDefinition.fromList(data['requiredItems']),
				DestinyProgressionRewardDefinition.fromList(data['progressionRewards']),
				data['actionTypeLabel'],
				data['requiredLocation'],
				data['requiredCooldownHash'],
				data['deleteOnAction'],
				data['consumeEntireStack'],
				data['useOnAcquire'],
		);
	}

	static List<DestinyItemActionBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemActionBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemActionBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['verbName'] = verbName;
			data['verbDescription'] = verbDescription;
			data['isPositive'] = isPositive;
			data['overlayScreenName'] = overlayScreenName;
			data['overlayIcon'] = overlayIcon;
			data['requiredCooldownSeconds'] = requiredCooldownSeconds;
			data['requiredItems'] = requiredItems.map((item)=>item.toMap());
			data['progressionRewards'] = progressionRewards.map((item)=>item.toMap());
			data['actionTypeLabel'] = actionTypeLabel;
			data['requiredLocation'] = requiredLocation;
			data['requiredCooldownHash'] = requiredCooldownHash;
			data['deleteOnAction'] = deleteOnAction;
			data['consumeEntireStack'] = consumeEntireStack;
			data['useOnAcquire'] = useOnAcquire;
	}
}