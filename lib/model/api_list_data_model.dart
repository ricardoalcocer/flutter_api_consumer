class ApiListEntryDataModel {
  String api;
  String description;
  String auth;
  bool https;
  String cors;
  String link;
  String category;

  ApiListEntryDataModel({
    required this.api,
    required this.description,
    required this.auth,
    required this.https,
    required this.link,
    required this.category,
    required this.cors,
  });

  factory ApiListEntryDataModel.fromJson(Map<String, dynamic> json) {
    return ApiListEntryDataModel(
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
