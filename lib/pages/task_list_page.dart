import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list_app/constants/colors.dart';
import 'package:todo_list_app/pages/add_task_page.dart';
import 'package:todo_list_app/pages/main_menu_page.dart';
import 'package:todo_list_app/screens/task_list_page_screen.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite25525525510,
        surfaceTintColor: kwhite25525525510,
        toolbarHeight: 130,
        leadingWidth: 150,
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 9,
                top: 20,
                bottom: 15,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainMenuPage(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: kblackgrey62606310,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15,
                left: 20,
              ),
              child: Text(
                'Task List',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: kblackgrey62606310,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: kwhite25525525510,
      body: const SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TaskListPageScreen(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddTaskPage(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(72, 72),
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
            backgroundColor: kpurple13413323910, // <-- Button color
            foregroundColor: kpurple1341332391, // <-- Splash color
          ),
          child: const Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
