class DataModel {
  String api;
  String description;
  String auth;
  bool https;
  String cors;
  String link;
  String category;

  DataModel(
      {required this.api,
      required this.description,
      required this.auth,
      required this.https,
      required this.link,
      required this.category,
      required this.cors});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      api: json["API"],
      description: json["Description"],
      auth: json["Auth"],
      https: json["HTTPS"],
      cors: json["Cors"],
      link: json["Link"],
      category: json["Category"],
    );
  }
}
