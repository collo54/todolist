import 'package:flutter/material.dart';

import '../layouts/main_menu_page_mobile_layout.dart';

class MainMenuPageScreen extends StatelessWidget {
  const MainMenuPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      key: UniqueKey(),
      builder: (context, constraints) {
        if (constraints.maxWidth > 1020) {
          return const TabletMainMenuPageScreen();
        } else {
          return const MobileMainMenuPageScreen();
        }
      },
    );
  }
}

//Builds the tablet log in layout according to its constraints
class TabletMainMenuPageScreen extends StatelessWidget {
  const TabletMainMenuPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainMenuPageMobileLayout(); // const HomePageTabletLayout();
  }
}

//Builds the mobile log in layout according to its constraints
class MobileMainMenuPageScreen extends StatelessWidget {
  const MobileMainMenuPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainMenuPageMobileLayout();
  }
}
