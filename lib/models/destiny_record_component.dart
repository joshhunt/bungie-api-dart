import 'destiny_objective_progress.dart';
class DestinyRecordComponent{
	int state;
	List<DestinyObjectiveProgress> objectives;
	DestinyRecordComponent(
		int this.state,
		List<DestinyObjectiveProgress> this.objectives,
	);

	static DestinyRecordComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyRecordComponent(
				data['state'],
				DestinyObjectiveProgress.fromList(data['objectives']),
		);
	}

	static List<DestinyRecordComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyRecordComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyRecordComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['state'] = state;
			data['objectives'] = objectives.map((item)=>item.toMap());
	}
}