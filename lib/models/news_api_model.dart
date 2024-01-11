class NewsApi {
  final String? id;
  final String? title;
  final String? content;

  const NewsApi({
    required this.id,
    required this.title,
    required this.content,
  });

  factory NewsApi.fromJson(Map<String, dynamic> json) {
    return NewsApi(
      id: json['Kode'],
      title: json['Judul'],
      content: json['Keterangan'],
    );
  }
}
