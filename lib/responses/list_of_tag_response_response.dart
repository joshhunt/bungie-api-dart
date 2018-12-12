import '../models/tag_response.dart';
class ListOfTagResponseResponse{
    List<TagResponse> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    ListOfTagResponseResponse(
		List<TagResponse> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static ListOfTagResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ListOfTagResponseResponse(
				TagResponse.fromList(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<ListOfTagResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ListOfTagResponseResponse> list = new List();
    data.forEach((item) {
      list.add(ListOfTagResponseResponse.fromMap(item));
    });
    return list;
	}
}