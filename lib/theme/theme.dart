

import 'package:flutter/material.dart';
import 'package:realview_openlibrary_app/theme/colors.dart';
import 'package:realview_openlibrary_app/theme/typography.dart';

class OpenLibraryTheme {
  ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: OpenLibraryColor.beige,
    textTheme: TextTheme(bodyLarge: OpenLibraryTypography.bodyText),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: OpenLibraryColor.beige,
      selectedItemColor: OpenLibraryColor.black
    ),
    appBarTheme: AppBarTheme(
      foregroundColor: OpenLibraryColor.black,
      backgroundColor: OpenLibraryColor.beige,
      centerTitle: true
    )
  );
}