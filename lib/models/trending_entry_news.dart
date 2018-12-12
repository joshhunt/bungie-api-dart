import 'content_item_public_contract.dart';
class TrendingEntryNews{
	ContentItemPublicContract article;
	TrendingEntryNews(
		ContentItemPublicContract this.article,
	);

	static TrendingEntryNews fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingEntryNews(
				ContentItemPublicContract.fromMap(data['article']),
		);
	}

	static List<TrendingEntryNews> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingEntryNews> list = new List();
    data.forEach((item) {
      list.add(TrendingEntryNews.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['article'] = article.toMap();
	}
}