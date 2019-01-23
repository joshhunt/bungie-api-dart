import 'group_v2_card.dart';
import 'paged_query.dart';

/**  */
class SearchResultOfGroupV2Card{
	
	/**  */
	List<GroupV2Card> results;
	
	/**  */
	int totalResults;
	
	/**  */
	bool hasMore;
	
	/**  */
	PagedQuery query;
	
	/**  */
	String replacementContinuationToken;
	
	/** If useTotalResults is true, then totalResults represents an accurate count.
If False, it does not, and may be estimated/only the size of the current page.
Either way, you should probably always only trust hasMore.
This is a long-held historical throwback to when we used to do paging with known total results. Those queries toasted our database, and we were left to hastily alter our endpoints and create backward- compatible shims, of which useTotalResults is one. */
	bool useTotalResults;
	SearchResultOfGroupV2Card(
		this.results,
		this.totalResults,
		this.hasMore,
		this.query,
		this.replacementContinuationToken,
		this.useTotalResults,
	);

	static SearchResultOfGroupV2Card fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfGroupV2Card(
				data['results'] != null ? GroupV2Card.fromList(data['results']) : null,
				data['totalResults'],
				data['hasMore'],
				data['query'] != null ? PagedQuery.fromMap(data['query']) : null,
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfGroupV2Card> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfGroupV2Card> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfGroupV2Card.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['results'] = this.results != null? this.results.map((item)=>item.toMap()).toList() : null;
			data['totalResults'] = this.totalResults;
			data['hasMore'] = this.hasMore;
			data['query'] = this.query != null? this.query.toMap() : null;
			data['replacementContinuationToken'] = this.replacementContinuationToken;
			data['useTotalResults'] = this.useTotalResults;
		return data;
	}
}