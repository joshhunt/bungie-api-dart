import 'group_member_application.dart';
import 'paged_query.dart';
class SearchResultOfGroupMemberApplication{
	List<GroupMemberApplication> results;
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	SearchResultOfGroupMemberApplication(
		List<GroupMemberApplication> this.results,
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static SearchResultOfGroupMemberApplication fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfGroupMemberApplication(
				GroupMemberApplication.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromMap(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfGroupMemberApplication> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfGroupMemberApplication> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfGroupMemberApplication.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['results'] = results.map((item)=>item.toMap());
			data['totalResults'] = totalResults;
			data['hasMore'] = hasMore;
			data['query'] = query.toMap();
			data['replacementContinuationToken'] = replacementContinuationToken;
			data['useTotalResults'] = useTotalResults;
	}
}