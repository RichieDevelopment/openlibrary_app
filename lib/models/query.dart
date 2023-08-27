import 'author.dart';

class Query {
  int numFound = -1;
  List<Author> authorList = [];

  Query();

  Query.fromJson(Map<String, dynamic> json)
      : numFound = json['numFound'] ?? -1,
      authorList = createAuthorList(json);

  static List<Author> createAuthorList(Map<String, dynamic>? json) {
    List<dynamic> untypedList = json?['docs'] ?? [];
    List<Author> authorList = [];
    for (int i = 0; i < untypedList.length; i++) {
      Author authorFormJson = Author.fromJson(untypedList[i]);
      authorList.add(authorFormJson);
    }
    return authorList;
  }
}