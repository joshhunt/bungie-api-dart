import 'destiny_progression.dart';
import 'clan_banner.dart';
class GroupV2ClanInfoAndInvestment{
	Map<DestinyProgression, dynamic> d2ClanProgressions;
	String clanCallsign;
	ClanBanner clanBannerData;
	GroupV2ClanInfoAndInvestment(
		Map<DestinyProgression, dynamic> this.d2ClanProgressions,
		String this.clanCallsign,
		ClanBanner this.clanBannerData,
	);

	static GroupV2ClanInfoAndInvestment fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupV2ClanInfoAndInvestment(
				data['d2ClanProgressions'],
				data['clanCallsign'],
				ClanBanner.fromMap(data['clanBannerData']),
		);
	}

	static List<GroupV2ClanInfoAndInvestment> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupV2ClanInfoAndInvestment> list = new List();
    data.forEach((item) {
      list.add(GroupV2ClanInfoAndInvestment.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['d2ClanProgressions'] = d2ClanProgressions;
			data['clanCallsign'] = clanCallsign;
			data['clanBannerData'] = clanBannerData.toMap();
	}
}