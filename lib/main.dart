import 'package:busbuddy/firebase_options.dart';
import 'package:busbuddy/utils/constants/colour_constants.dart';
import 'package:busbuddy/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const BusBuddyApp());
}

class BusBuddyApp extends StatelessWidget {
  const BusBuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus Buddy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: lightBlueSwatch,
        colorScheme: ColorScheme.light(
          primary: lightBlue,
          secondary: lightBlueAccent,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: lightBlue,
          foregroundColor: Colors.black,
        ),
      ),
      routes: BusBuddyRoutes.routes,
      initialRoute: BusBuddyRoutes.parentLogin,
    );
  }
}
