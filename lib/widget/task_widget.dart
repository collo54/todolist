import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
    required this.callback,
  });
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        width: 160,
        height: 96,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          shape: BoxShape.rectangle,
          color: kpurple13413323910,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 15,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Tasks',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: kwhite25525525510,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                //top: 65,
                right: 20,
              ),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset('assets/images/listicon.png')),
            ),
          ],
        ),
      ),
    );
  }
}
