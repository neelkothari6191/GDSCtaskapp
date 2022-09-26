import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gdsc2022task/screens/Signupscreen.dart';
import 'package:gdsc2022task/screens/loginscreen.dart';
import 'package:gdsc2022task/screens/profilescreen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => LoginScreen(),
        'signup': (context) => SignUpScreen(),
        'profilescreen': (context) => ProfileScreen()
      },
    );
  }
}
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     initialRoute: 'login',
//     routes: {
//       'login':(context)=>LoginScreen(),
//       'signup':(context)=>SignUpScreen(),
//       'homepage':(context)=>HomePage()
//     },
//   ));
// }


