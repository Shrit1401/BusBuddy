import 'package:busbuddy/utils/constants/colour_constants.dart';
import 'package:busbuddy/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      initialRoute: BusBuddyRoutes.driverProfilePage,
    );
  }
}
