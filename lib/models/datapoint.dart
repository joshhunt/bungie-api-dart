class Datapoint{
	String time;
	int count;
	Datapoint(
		String this.time,
		int this.count,
	);

	static Datapoint fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new Datapoint(
				data['time'],
				data['count'],
		);
	}

	static List<Datapoint> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<Datapoint> list = new List();
    data.forEach((item) {
      list.add(Datapoint.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['time'] = time;
			data['count'] = count;
	}
}