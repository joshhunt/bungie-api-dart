import '../models/search_result_of_community_live_status.dart';
class SearchResultOfCommunityLiveStatusResponse{
    SearchResultOfCommunityLiveStatus response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    SearchResultOfCommunityLiveStatusResponse(
		SearchResultOfCommunityLiveStatus this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static SearchResultOfCommunityLiveStatusResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfCommunityLiveStatusResponse(
				SearchResultOfCommunityLiveStatus.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfCommunityLiveStatusResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfCommunityLiveStatusResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfCommunityLiveStatusResponse.fromMap(item));
    });
    return list;
	}
}