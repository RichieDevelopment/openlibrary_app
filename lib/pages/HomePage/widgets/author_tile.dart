import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:realview_openlibrary_app/pages/AuthorInfoPage/author_info_page.dart';

import '../../../models/author.dart';
import '../controllers/home_controller.dart';

class AuthorTile extends StatelessWidget {
  const AuthorTile({super.key, required this.controller, required this.index});

  final HomeController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    Author author = controller.query.value.authorList[index];

    return ListTile(
      title: Text(author .name),
      subtitle: (author.topWork != "") ? Text("Top work: ${author.topWork}") : const SizedBox(),
      onTap: () => Get.to(() => AuthorInfoPage(authorKey: author.key)),
    );
  }
}
