import 'package:flutter/material.dart';

import '../layouts/wireframe_mobile_layout.dart';

class WireframePageScreen extends StatelessWidget {
  const WireframePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      key: UniqueKey(),
      builder: (context, constraints) {
        if (constraints.maxWidth > 1020) {
          return const TabletWireframePageScreen();
        } else {
          return const MobileWireframePageScreen();
        }
      },
    );
  }
}

//Builds the tablet log in layout according to its constraints
class TabletWireframePageScreen extends StatelessWidget {
  const TabletWireframePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WireframeMobileLayout(); // const HomePageTabletLayout();
  }
}

//Builds the mobile log in layout according to its constraints
class MobileWireframePageScreen extends StatelessWidget {
  const MobileWireframePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WireframeMobileLayout();
  }
}
