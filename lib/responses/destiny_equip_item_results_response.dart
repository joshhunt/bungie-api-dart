import '../models/destiny_equip_item_results.dart';
class DestinyEquipItemResultsResponse{
    DestinyEquipItemResults response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyEquipItemResultsResponse(
		DestinyEquipItemResults this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyEquipItemResultsResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyEquipItemResultsResponse(
				DestinyEquipItemResults.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyEquipItemResultsResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyEquipItemResultsResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyEquipItemResultsResponse.fromMap(item));
    });
    return list;
	}
}