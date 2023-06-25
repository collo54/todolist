import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list_app/constants/colors.dart';

class WireframeMobileLayout extends StatelessWidget {
  const WireframeMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Type:',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: kblackgrey62606310,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  'Work',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: kblackgrey62606310,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Priority:',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: kblackgrey62606310,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  'Needs Done',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: kblackgrey62606310,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Timeframe:',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: kblackgrey62606310,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  '3 Days',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: kblackgrey62606310,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Text(
              'Description:',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: kblackgrey62606310,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              'The purpose of this project is to design a user-friendly and intuitive wireframing to-do list application that allows users to create, manage and track their tasks efficiently.',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: kblackgrey62606310,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
