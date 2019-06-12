import '../models/destiny_item_change_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_change_response_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class DestinyItemChangeResponseResponse{
	
	/**  */
	@JsonKey(name:'Response')
	DestinyItemChangeResponse response;
	
	/**  */
	@JsonKey(name:'ErrorCode')
	int errorCode;
	
	/**  */
	@JsonKey(name:'ThrottleSeconds')
	int throttleSeconds;
	
	/**  */
	@JsonKey(name:'ErrorStatus')
	String errorStatus;
	
	/**  */
	@JsonKey(name:'Message')
	String message;
	
	/**  */
	@JsonKey(name:'MessageData')
	Map<String, String> messageData;
	
	/**  */
	@JsonKey(name:'DetailedErrorTrace')
	String detailedErrorTrace;
	DestinyItemChangeResponseResponse({
		DestinyItemChangeResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory DestinyItemChangeResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyItemChangeResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyItemChangeResponseResponseToJson(this);
}