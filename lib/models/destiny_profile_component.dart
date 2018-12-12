import 'user_info_card.dart';
class DestinyProfileComponent{
	UserInfoCard userInfo;
	String dateLastPlayed;
	int versionsOwned;
	List<int> characterIds;
	DestinyProfileComponent(
		UserInfoCard this.userInfo,
		String this.dateLastPlayed,
		int this.versionsOwned,
		List<int> this.characterIds,
	);

	static DestinyProfileComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProfileComponent(
				data['userInfo'],
				data['dateLastPlayed'],
				data['versionsOwned'],
				data['characterIds'],
		);
	}

	static List<DestinyProfileComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProfileComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyProfileComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['userInfo'] = userInfo;
			data['dateLastPlayed'] = dateLastPlayed;
			data['versionsOwned'] = versionsOwned;
			data['characterIds'] = characterIds;
	}
}