import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list_app/constants/colors.dart';
import 'package:todo_list_app/pages/task_list_page.dart';

import '../widget/task_widget.dart';

class MainMenuPageMobileLayout extends StatelessWidget {
  const MainMenuPageMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 50,
                right: 5,
                bottom: 15,
              ),
              child: Text(
                'What would you like to do today?',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: kblackgrey62606310,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: getTasks(context: context),
          ),
        ],
      ),
    );
  }

  Widget getTasks({BuildContext? context}) {
    return TaskWidget(
      callback: () {
        Navigator.push(
          context!,
          MaterialPageRoute(
            builder: (context) => const TaskListPage(),
          ),
        );
      },
    );
  }
}
