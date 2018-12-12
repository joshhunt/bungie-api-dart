class CommentSummary{
	int topicId;
	int commentCount;
	CommentSummary(
		int this.topicId,
		int this.commentCount,
	);

	static CommentSummary fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new CommentSummary(
				data['topicId'],
				data['commentCount'],
		);
	}

	static List<CommentSummary> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<CommentSummary> list = new List();
    data.forEach((item) {
      list.add(CommentSummary.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['topicId'] = topicId;
			data['commentCount'] = commentCount;
	}
}