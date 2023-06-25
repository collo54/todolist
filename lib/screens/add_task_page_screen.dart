import 'package:flutter/material.dart';

import '../layouts/add_task_mobile_layout.dart';

class AddTaskPageScreen extends StatelessWidget {
  const AddTaskPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      key: UniqueKey(),
      builder: (context, constraints) {
        if (constraints.maxWidth > 1020) {
          return const TabletAddTaskPageScreen();
        } else {
          return const MobileAddTaskPageScreen();
        }
      },
    );
  }
}

//Builds the tablet log in layout according to its constraints
class TabletAddTaskPageScreen extends StatelessWidget {
  const TabletAddTaskPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AddTaskMobileLayout(); // const HomePageTabletLayout();
  }
}

//Builds the mobile log in layout according to its constraints
class MobileAddTaskPageScreen extends StatelessWidget {
  const MobileAddTaskPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AddTaskMobileLayout();
  }
}
