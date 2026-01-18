import 'package:busbuddy/pages/auth_drivers/driver_login_page.dart';
import 'package:busbuddy/pages/auth_drivers/driver_signup_page.dart';
import 'package:busbuddy/pages/auth_parents/parent_login_page.dart';
import 'package:busbuddy/pages/auth_parents/parent_signup_page.dart';
import 'package:busbuddy/pages/onboard/onboard_page.dart';
import 'package:busbuddy/pages/parents_core/parents_homepage.dart';
import 'package:flutter/material.dart';

class BusBuddyRoutes {
  //parents
  static String parentLogin = '/parent-login';
  static String parentSignup = '/parent-signup';
  static String parentsHomepage = '/parents-homepage';

  //drivrs
  static String driverLogin = '/driver-login';
  static String driverSignup = '/driver-signup';

  static String onboard = '/onboard';

  static Map<String, WidgetBuilder> routes = {
    parentLogin: (context) => ParentLoginPage(),
    parentSignup: (context) => ParentSignupPage(),
    driverLogin: (context) => DriverLoginPage(),
    driverSignup: (context) => DriverSignupPage(),
    parentsHomepage: (context) => ParentsHomepage(),
    onboard: (context) => OnboardPage(),
  };
}
