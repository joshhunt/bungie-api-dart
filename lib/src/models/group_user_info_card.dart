
import 'package:json_annotation/json_annotation.dart';
part 'group_user_info_card.g.dart';

@JsonSerializable()
class GroupUserInfoCard{
	
	/// This will be the display name the clan server last saw the user as. If the account is an active cross save override, this will be the display name to use. Otherwise, this will match the displayName property.
	@JsonKey(name:'LastSeenDisplayName')
	String lastSeenDisplayName;
	
	/// The platform of the LastSeenDisplayName
	@JsonKey(name:'LastSeenDisplayNameType')
	int lastSeenDisplayNameType;
	
	/// A platform specific additional display name - ex: psn Real Name, bnet Unique Name, etc.
	@JsonKey(name:'supplementalDisplayName')
	String supplementalDisplayName;
	
	/// URL the Icon if available.
	@JsonKey(name:'iconPath')
	String iconPath;
	
	/// If there is a cross save override in effect, this value will tell you the type that is overridding this one.
	@JsonKey(name:'crossSaveOverride')
	int crossSaveOverride;
	
	/// The list of Membership Types indicating the platforms on which this Membership can be used.
	///  Not in Cross Save &#x3D; its original membership type. Cross Save Primary &#x3D; Any membership types it is overridding, and its original membership type Cross Save Overridden &#x3D; Empty list
	@JsonKey(name:'applicableMembershipTypes')
	List<int> applicableMembershipTypes;
	
	/// If True, this is a public user membership.
	@JsonKey(name:'isPublic')
	bool isPublic;
	
	/// Type of the membership. Not necessarily the native type.
	@JsonKey(name:'membershipType')
	int membershipType;
	
	/// Membership ID as they user is known in the Accounts service
	@JsonKey(name:'membershipId')
	String membershipId;
	
	/// Display Name the player has chosen for themselves. The display name is optional when the data type is used as input to a platform API.
	@JsonKey(name:'displayName')
	String displayName;
	GroupUserInfoCard();

	factory GroupUserInfoCard.fromJson(Map<String, dynamic> json) => _$GroupUserInfoCardFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupUserInfoCardToJson(this);
}