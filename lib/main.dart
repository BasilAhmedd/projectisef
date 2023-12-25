import 'package:flutter/material.dart';
import 'package:projectiseeff/ui/Register/RegisterScreen.dart';
import 'package:projectiseeff/ui/login/LoginScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
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
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFF2DEF2)),
        useMaterial3: true,
      ),
      routes: {
         RegisterScreen.routeName : (buildContext)=>RegisterScreen(),
         LoginScreen.routeName : (buildContext)=>LoginScreen(),
        // PageofLocation.routeName : (buildContext)=>PageofLocation(),
        // SplashScreen.routeName : (buildContext)=>SplashScreen(),
        // instruction.routeName : (buildContext)=>instruction(),
        // informationForPatient.routeName : (buildContext)=>informationForPatient(),
        // information.routeName : (buildContext)=>information(),
        // HomePage.routeName : (buildContext)=>HomePage(),
        // ForgetPassword.routeName : (buildContext)=>ForgetPassword(),
      },
      initialRoute: RegisterScreen.routeName,
    );
  }
}

