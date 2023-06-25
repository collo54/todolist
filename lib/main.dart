import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:todo_list_app/constants/colors.dart';
import 'package:todo_list_app/pages/main_menu_page.dart';

import 'firebase_options.dart';

class MyUrlStrategy extends HashUrlStrategy {
  @override
  String prepareExternalUrl(String internalUrl) {
    final String externalUrl = super.prepareExternalUrl(internalUrl);
    if (externalUrl.endsWith('#/')) {
      return externalUrl.substring(0, externalUrl.length - 2);
    }
    return externalUrl;
  }
}

void main() async {
  setUrlStrategy(MyUrlStrategy());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kwhite25525525510,
        useMaterial3: true,
      ),
      home: const MainMenuPage(),
    );
  }
}
