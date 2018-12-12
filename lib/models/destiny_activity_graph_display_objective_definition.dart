class DestinyActivityGraphDisplayObjectiveDefinition{
	int id;
	int objectiveHash;
	DestinyActivityGraphDisplayObjectiveDefinition(
		int this.id,
		int this.objectiveHash,
	);

	static DestinyActivityGraphDisplayObjectiveDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGraphDisplayObjectiveDefinition(
				data['id'],
				data['objectiveHash'],
		);
	}

	static List<DestinyActivityGraphDisplayObjectiveDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityGraphDisplayObjectiveDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphDisplayObjectiveDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['id'] = id;
			data['objectiveHash'] = objectiveHash;
	}
}