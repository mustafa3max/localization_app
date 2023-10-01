class TrModel {
  TrModel({
    required this.title,
    required this.desc,
    required this.article,
  });
  late final String title;
  late final String desc;
  late final String article;

  TrModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    desc = json['desc'];
    article = json['article'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['desc'] = desc;
    data['article'] = article;
    return data;
  }
}
