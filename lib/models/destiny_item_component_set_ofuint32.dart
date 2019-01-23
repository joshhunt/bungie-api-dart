import 'dictionary_component_response_ofuint32_and_destiny_item_instance_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_perks_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_render_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_stats_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_sockets_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_talent_grid_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_plug_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_objectives_component.dart';

/**  */
class DestinyItemComponentSetOfuint32{
	
	/**  */
	DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent instances;
	
	/**  */
	DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent perks;
	
	/**  */
	DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent renderData;
	
	/**  */
	DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent stats;
	
	/**  */
	DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent sockets;
	
	/**  */
	DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent talentGrids;
	
	/**  */
	DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent plugStates;
	
	/**  */
	DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent objectives;
	DestinyItemComponentSetOfuint32(
		this.instances,
		this.perks,
		this.renderData,
		this.stats,
		this.sockets,
		this.talentGrids,
		this.plugStates,
		this.objectives,
	);

	static DestinyItemComponentSetOfuint32 fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemComponentSetOfuint32(
				data['instances'] != null ? DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent.fromMap(data['instances']) : null,
				data['perks'] != null ? DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent.fromMap(data['perks']) : null,
				data['renderData'] != null ? DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent.fromMap(data['renderData']) : null,
				data['stats'] != null ? DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent.fromMap(data['stats']) : null,
				data['sockets'] != null ? DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent.fromMap(data['sockets']) : null,
				data['talentGrids'] != null ? DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent.fromMap(data['talentGrids']) : null,
				data['plugStates'] != null ? DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent.fromMap(data['plugStates']) : null,
				data['objectives'] != null ? DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent.fromMap(data['objectives']) : null,
		);
	}

	static List<DestinyItemComponentSetOfuint32> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemComponentSetOfuint32> list = new List();
    data.forEach((item) {
      list.add(DestinyItemComponentSetOfuint32.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['instances'] = this.instances != null? this.instances.toMap() : null;
			data['perks'] = this.perks != null? this.perks.toMap() : null;
			data['renderData'] = this.renderData != null? this.renderData.toMap() : null;
			data['stats'] = this.stats != null? this.stats.toMap() : null;
			data['sockets'] = this.sockets != null? this.sockets.toMap() : null;
			data['talentGrids'] = this.talentGrids != null? this.talentGrids.toMap() : null;
			data['plugStates'] = this.plugStates != null? this.plugStates.toMap() : null;
			data['objectives'] = this.objectives != null? this.objectives.toMap() : null;
		return data;
	}
}