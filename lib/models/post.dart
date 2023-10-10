class Post {
  final String id;
  final String title;
  final String content;
  final String userId;

  Post({
    required this.id,
    required this.title,
    required this.content,
    required this.userId,
  });

  // Add a factory constructor to convert JSON to a Post object
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      userId: json['userId'] as String,
    );
  }
}
