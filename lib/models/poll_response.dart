import 'poll_result.dart';
class PollResponse{
	int topicId;
	List<PollResult> results;
	int totalVotes;
	PollResponse(
		int this.topicId,
		List<PollResult> this.results,
		int this.totalVotes,
	);

	static PollResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new PollResponse(
				data['topicId'],
				PollResult.fromList(data['results']),
				data['totalVotes'],
		);
	}

	static List<PollResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<PollResponse> list = new List();
    data.forEach((item) {
      list.add(PollResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['topicId'] = topicId;
			data['results'] = results.map((item)=>item.toMap());
			data['totalVotes'] = totalVotes;
	}
}