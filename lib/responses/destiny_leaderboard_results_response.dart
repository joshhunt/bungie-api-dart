import '../models/destiny_leaderboard.dart';
class DestinyLeaderboardResultsResponse{
    Map<Map<DestinyLeaderboard, dynamic>, dynamic> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyLeaderboardResultsResponse(
		Map<Map<DestinyLeaderboard, dynamic>, dynamic> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyLeaderboardResultsResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLeaderboardResultsResponse(
				data['Response'],
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyLeaderboardResultsResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyLeaderboardResultsResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyLeaderboardResultsResponse.fromMap(item));
    });
    return list;
	}
}