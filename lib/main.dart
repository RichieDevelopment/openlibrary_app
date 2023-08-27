import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:realview_openlibrary_app/pages/IndexPage/index_page.dart';
import 'package:realview_openlibrary_app/theme/theme.dart';

void main() {
  runApp(const OpenLibraryMainApp());
}

class OpenLibraryMainApp extends StatelessWidget {
  const OpenLibraryMainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'OpenLibrary',
      debugShowCheckedModeBanner: false,
      theme: OpenLibraryTheme().themeData,
      home: const IndexPage(),
    );
  }
}

