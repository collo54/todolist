import 'package:flutter/material.dart';
import 'package:todo_list_app/constants/colors.dart';
import 'package:todo_list_app/screens/main_menu_page_screen.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kwhite25525525510,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MainMenuPageScreen(),
          ],
        ),
      ),
    );
  }
}
