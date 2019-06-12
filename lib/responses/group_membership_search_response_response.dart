import '../models/group_membership_search_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'group_membership_search_response_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class GroupMembershipSearchResponseResponse{
	
	/**  */
	@JsonKey(name:'Response')
	GroupMembershipSearchResponse response;
	
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
	GroupMembershipSearchResponseResponse({
		GroupMembershipSearchResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory GroupMembershipSearchResponseResponse.fromJson(Map<String, dynamic> json) => _$GroupMembershipSearchResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$GroupMembershipSearchResponseResponseToJson(this);
}