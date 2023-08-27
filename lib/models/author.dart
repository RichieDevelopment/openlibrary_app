class Author {
  String key = "";
  String name = "";
  List alternateNames = [];
  String birthDate = "";
  String topWork = "";
  int workCount = -1;
  List topSubjects = [];
  String url = "";
  String biographie = "";
  String wikipediaLink = "";

  Author();

  Author.fromJson(Map<String, dynamic> json)
      : key = json['key'] ?? "",
        name = json['name'] ?? "",
        alternateNames = json["alternate_names"]?? [],
        birthDate = json['birth_date'] ?? "",
        topWork = json['top_work'] ?? "",
        workCount = json['work_count'] ?? -1,
        topSubjects = json['top_subjects'] ?? [],
        biographie = json['bio']?['value'] ?? "",
        wikipediaLink = json['wikipedia'] ?? "",
        url = json['links']?[0]?["url"] ?? "";
}


