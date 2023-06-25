import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list_app/constants/colors.dart';
import 'package:todo_list_app/screens/wireframe_page_screen.dart';

class WireframePage extends StatelessWidget {
  const WireframePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite25525525510,
        surfaceTintColor: kwhite25525525510,
        toolbarHeight: 130,
        leadingWidth: 200,
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
                  Navigator.pop(context);
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
                'Wireframing',
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
            WireframePageScreen(),
          ],
        ),
      ),
    );
  }
}
