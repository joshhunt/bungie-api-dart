import 'single_component_response_of_destiny_item_component.dart';
import 'single_component_response_of_destiny_item_instance_component.dart';
import 'single_component_response_of_destiny_item_objectives_component.dart';
import 'single_component_response_of_destiny_item_perks_component.dart';
import 'single_component_response_of_destiny_item_render_component.dart';
import 'single_component_response_of_destiny_item_stats_component.dart';
import 'single_component_response_of_destiny_item_talent_grid_component.dart';
import 'single_component_response_of_destiny_item_sockets_component.dart';
class DestinyItemResponse{
	int characterId;
	SingleComponentResponseOfDestinyItemComponent item;
	SingleComponentResponseOfDestinyItemInstanceComponent instance;
	SingleComponentResponseOfDestinyItemObjectivesComponent objectives;
	SingleComponentResponseOfDestinyItemPerksComponent perks;
	SingleComponentResponseOfDestinyItemRenderComponent renderData;
	SingleComponentResponseOfDestinyItemStatsComponent stats;
	SingleComponentResponseOfDestinyItemTalentGridComponent talentGrid;
	SingleComponentResponseOfDestinyItemSocketsComponent sockets;
	DestinyItemResponse(
		int this.characterId,
		SingleComponentResponseOfDestinyItemComponent this.item,
		SingleComponentResponseOfDestinyItemInstanceComponent this.instance,
		SingleComponentResponseOfDestinyItemObjectivesComponent this.objectives,
		SingleComponentResponseOfDestinyItemPerksComponent this.perks,
		SingleComponentResponseOfDestinyItemRenderComponent this.renderData,
		SingleComponentResponseOfDestinyItemStatsComponent this.stats,
		SingleComponentResponseOfDestinyItemTalentGridComponent this.talentGrid,
		SingleComponentResponseOfDestinyItemSocketsComponent this.sockets,
	);

	static DestinyItemResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemResponse(
				data['characterId'],
				data['item'],
				data['instance'],
				data['objectives'],
				data['perks'],
				data['renderData'],
				data['stats'],
				data['talentGrid'],
				data['sockets'],
		);
	}

	static List<DestinyItemResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyItemResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['characterId'] = characterId;
			data['item'] = item;
			data['instance'] = instance;
			data['objectives'] = objectives;
			data['perks'] = perks;
			data['renderData'] = renderData;
			data['stats'] = stats;
			data['talentGrid'] = talentGrid;
			data['sockets'] = sockets;
	}
}