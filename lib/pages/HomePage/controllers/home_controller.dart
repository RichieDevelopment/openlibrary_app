

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realview_openlibrary_app/services/open_library_service.dart';

import '../../../models/query.dart';

class HomeController extends GetxController {
  
  Rx<TextEditingController> searchFieldController = TextEditingController().obs;
  Rx<Query> query = Query().obs;

  OpenLibraryService openLibraryService = Get.put(OpenLibraryService());

  queryAuthorByName(String authorName) async {
    query.value = await openLibraryService.getQueryFromSearch(authorName);
  }
  
}