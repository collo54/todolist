import 'package:flutter/material.dart';
import 'package:todo_list_app/pages/wireframe_page.dart';
import 'package:todo_list_app/widget/task_list_widget.dart';

class TaskListPageMobileLayout extends StatefulWidget {
  const TaskListPageMobileLayout({super.key});

  @override
  State<TaskListPageMobileLayout> createState() =>
      _TaskListPageMobileLayoutState();
}

class _TaskListPageMobileLayoutState extends State<TaskListPageMobileLayout> {
  bool check = false;
  bool check1 = false;
  bool checked = true;
  bool checked1 = true;
  bool checked2 = true;
  bool checked3 = true;
  bool checked4 = true;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: 790,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 22),
        child: getTasksList(size: size, context: context),
      ),
    );
  }

  Widget getTasksList({Size? size, BuildContext? context}) {
    return Column(
      children: [
        TaskListWidget(
          value: checked,
          title: 'Wireframing',
          subtitle: '3 Days',
          onpressed: () {
            Navigator.push(
              context!,
              MaterialPageRoute(
                builder: (context) => const WireframePage(),
              ),
            );
          },
          onchanged: (value) {
            setState(() {
              checked = value!;
            });
          },
        ),
        TaskListWidget(
          value: checked1,
          title: 'Moodboard',
          subtitle: 'Today',
          onpressed: () {
            Navigator.push(
              context!,
              MaterialPageRoute(
                builder: (context) => const WireframePage(),
              ),
            );
          },
          onchanged: (value) {
            setState(() {
              checked1 = value!;
            });
          },
        ),
        TaskListWidget(
          value: check,
          title: 'User Research',
          subtitle: 'Week',
          onpressed: () {
            Navigator.push(
              context!,
              MaterialPageRoute(
                builder: (context) => const WireframePage(),
              ),
            );
          },
          onchanged: (value) {
            setState(() {
              check = value!;
            });
          },
        ),
        TaskListWidget(
          value: check1,
          title: 'Personas',
          subtitle: 'Fortnight',
          onpressed: () {
            Navigator.push(
              context!,
              MaterialPageRoute(
                builder: (context) => const WireframePage(),
              ),
            );
          },
          onchanged: (value) {
            setState(() {
              check1 = value!;
            });
          },
        ),
        TaskListWidget(
          value: checked2,
          title: 'Prototyping',
          subtitle: 'Month',
          onpressed: () {
            Navigator.push(
              context!,
              MaterialPageRoute(
                builder: (context) => const WireframePage(),
              ),
            );
          },
          onchanged: (value) {
            setState(() {
              checked2 = value!;
            });
          },
        ),
        TaskListWidget(
          value: checked3,
          title: 'User Testing',
          subtitle: 'Today',
          onpressed: () {
            Navigator.push(
              context!,
              MaterialPageRoute(
                builder: (context) => const WireframePage(),
              ),
            );
          },
          onchanged: (value) {
            setState(() {
              checked3 = value!;
            });
          },
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
