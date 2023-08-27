import 'package:get/get.dart';
import 'package:realview_openlibrary_app/services/open_library_service.dart';

import '../../../models/author.dart';

class AuthorInfoController extends GetxController {
  String key = "";

  AuthorInfoController({required this.key});

  Rx<Author> author = Author().obs;

  RxBool loading = true.obs;

  OpenLibraryService openLibraryService = Get.find<OpenLibraryService>();
  
  getAuthor(String key) async {
    return openLibraryService.retrieveAuthor(key);
  }

  @override
  void onInit() async {
    author.value = await getAuthor(key);
    loading.value = false;
    super.onInit();
  }
}