import 'package:converse_project/pages/home_page.dart';
import 'package:converse_project/pages/about_page.dart';
import 'package:flutter/material.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  bool showHomePage = true;

  //toggle between page
  void togglePages() {
    setState(() {
      showHomePage = !showHomePage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showHomePage) {
      return HomePage(
        onTap: togglePages,
      );
    } else {
      return AboutPage(
        onTap: togglePages,
      );
    }
  }
}
