import 'package:bookit/main_layout.dart';
import 'package:bookit/screens/auth_page.dart';
import 'package:bookit/screens/booking_page.dart';
import 'package:bookit/screens/doctor_details.dart';
//import 'package:bookit/models/auth_model.dart';
//import 'package:bookit/screens/auth_page.dart';
//import 'package:bookit/screens/booking_page.dart';
//import 'package:bookit/screens/success_booked.dart';
import 'package:bookit/utils/config.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

//import 'utils/config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //this is for push navigator
  static final navigatorKey = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //define Themedata here
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'BookIt',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //predefined input decoration
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Config.primaryColor,
          border: Config.outlinedBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.outlinedBorder,
          floatingLabelStyle: TextStyle(color: Config.primaryColor),
          prefixIconColor: Colors.black38,
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Config.primaryColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      initialRoute: '/',
      routes: {
        //this is initial route of the application
        //which is auth page (login and sign up)
        '/': (context) => const AuthPage(),
        'main': (context) => const MainLayout(),
        'doc_details': (context) => const DoctorDetails(),
        'booking_page': (context) => BookingPage(),
        //'success_booking': (context) => const AppointmentBooked(),
      },
    );
  }
}
