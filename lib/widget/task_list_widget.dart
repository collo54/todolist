import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class TaskListWidget extends StatelessWidget {
  const TaskListWidget({
    super.key,
    required this.onchanged,
    required this.value,
    required this.title,
    required this.subtitle,
    required this.onpressed,
  });
  final void Function(bool?)? onchanged;
  final bool value;
  final String title;
  final String subtitle;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 2),
            ),
          ],
          shape: BoxShape.rectangle,
          color: kwhite24024024010,
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
            left: 23,
            right: 10,
          ),
          leading: Transform.scale(
            scale: 1.7,
            child: ClipOval(
              child: SizedBox(
                height: 18,
                width: 18,
                child: ColoredBox(
                  color: kwhite25525525510,
                  child: Checkbox(
                    value: value,
                    splashRadius: 14,
                    activeColor: kgreen02075310,
                    onChanged: onchanged,
                    shape: const CircleBorder(),
                    side: const BorderSide(
                      color: kgrey22222222210,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              title,
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: kblackgrey62606310,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              subtitle,
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: kblackgrey86868610,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          trailing: IconButton(
            onPressed: onpressed,
            icon: const Icon(
              Icons.arrow_forward,
              color: kblackgrey62606310,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}
