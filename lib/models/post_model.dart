class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostModel({this.id, this.userId, this.body, this.title});

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
    userId: json['userId'],
    id: json['id'],
    title: json['title'],
    body: json['body']
  );
}
