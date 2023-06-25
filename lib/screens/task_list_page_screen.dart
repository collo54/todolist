import 'package:flutter/material.dart';

import '../layouts/task_list_page_mobile_layout.dart';

class TaskListPageScreen extends StatelessWidget {
  const TaskListPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      key: UniqueKey(),
      builder: (context, constraints) {
        if (constraints.maxWidth > 1020) {
          return const TabletTaskListPageScreen();
        } else {
          return const MobileTaskListPageScreen();
        }
      },
    );
  }
}

//Builds the tablet log in layout according to its constraints
class TabletTaskListPageScreen extends StatelessWidget {
  const TabletTaskListPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TaskListPageMobileLayout(); // const HomePageTabletLayout();
  }
}

//Builds the mobile log in layout according to its constraints
class MobileTaskListPageScreen extends StatelessWidget {
  const MobileTaskListPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TaskListPageMobileLayout();
  }
}
