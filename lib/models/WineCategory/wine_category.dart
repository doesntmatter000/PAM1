class WineCategory {
  final String tag;
  final String name;

  WineCategory({required this.tag, required this.name});

  factory WineCategory.fromJson(Map<String, dynamic> json) {
    return WineCategory(
      tag: json['tag'],
      name: json['name'],
    );
  }
}
