import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realview_openlibrary_app/models/author.dart';
import 'package:realview_openlibrary_app/utils/constants.dart';
import 'package:http/http.dart' as http;

import '../models/query.dart';

class OpenLibraryService extends GetxService {
  Future<Query> getQueryFromSearch(String authorName) async {
    Uri url = Uri.https(OpenLibraryConstants.domain, OpenLibraryConstants.searchAPIPath, {
      'q': authorName
    });

    http.Response response = await http.get(url, headers: {
      HttpHeaders.contentTypeHeader: "application/json",
      "Access-Control-Allow-Origin": "*"
    });

    debugPrint("getQueryFromSearch - got response");

    if (response.statusCode == 200) {
      Map<String, dynamic> queryJson = jsonDecode(response.body);
      Query query = Query.fromJson(queryJson);
      return query;
    } else {
      debugPrint("Request failed with status code: ${response.statusCode}");
      return Query();
    }
  }

  Future<Author> retrieveAuthor(String key) async {
    Uri url = Uri.https(OpenLibraryConstants.domain, "${OpenLibraryConstants.authorAPIPath}$key.json");

    http.Response response = await http.get(url, headers: {
      HttpHeaders.contentTypeHeader: "application/json",
      "Access-Control-Allow-Origin": "*"
    });

    debugPrint("retrieveAuthor - got response");

    if (response.statusCode == 200) {
      Map<String, dynamic> authorJson = jsonDecode(response.body);
      Author author = Author.fromJson(authorJson);
      return author;
    } else {
      debugPrint("Request failed with status code: ${response.statusCode}");
      return Author();
    }
  }
}
