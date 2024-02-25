import 'package:firebasetodoapp2/screens/desktop/desktop_home.dart';
import 'package:firebasetodoapp2/screens/desktop/desktop_login.dart';
import 'package:firebasetodoapp2/screens/mobile/mobile_home.dart';
import 'package:firebasetodoapp2/screens/mobile/mobile_login.dart';
import 'package:firebasetodoapp2/screens/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// web app link
// https://gateentry-8b6e3.web.app/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gate Entry Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: ResponsiveLayout(
      //   mobile: MobileLogin(),
      //   desktop: DesktopLogin(),
      // ),
      home: ResponsiveLayout(
        mobile: MobileHomeScreen(),
        desktop: DesktopHomeScreen(),
      ),
    );
  }
}
