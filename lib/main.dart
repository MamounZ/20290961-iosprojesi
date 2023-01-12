
import 'package:mamoun_js_zaid/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mamoun_js_zaid/pages/bottom_navigation_bar.dart';
import 'package:mamoun_js_zaid/pages/favorite.dart';
import 'package:mamoun_js_zaid/pages/westren.dart';
import 'package:mamoun_js_zaid/pages/asian.dart';
import 'package:mamoun_js_zaid/pages/middleeastern.dart';
import 'package:mamoun_js_zaid/pages/african.dart';
import 'package:mamoun_js_zaid/pages/french.dart';
import 'package:mamoun_js_zaid/pages/recipes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/loginScreen',
        routes: {
        '/loginScreen': (context) =>  LoginPage(),
        '/HomePage': (context) => bottom_navigation_bar(),
        '/favorite': (context) =>  favorite(),
        '/western': (context) => const westren(),
        '/asian': (context) => const asian(),
        '/middleeastern': (context) => const middleeastern(),
        '/african': (context) => const african(),
        '/french': (context) => const french(),
          '/recipes': (context) => const recipes(),






        },
    );
  }
}