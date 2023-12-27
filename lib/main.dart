import 'package:flutter/material.dart';
import 'package:projectiseeff/provider/authProvider.dart';
import 'package:projectiseeff/splashScreen.dart';
import 'package:projectiseeff/ui/HomeScreen/HomeScreen.dart';
import 'package:projectiseeff/ui/LocationScreen/LocationScreen.dart';
import 'package:projectiseeff/ui/PatientData/PatientData.dart';
import 'package:projectiseeff/ui/PatientDetails/PatientDetails.dart';
import 'package:projectiseeff/ui/Register/RegisterScreen.dart';
import 'package:projectiseeff/ui/information/information.dart';
import 'package:projectiseeff/ui/instructions/intructions.dart';
import 'package:projectiseeff/ui/login/LoginScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChangeNotifierProvider(
   create: (buildContext)=>AuthProviderr(),
      child:const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alzahimar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFF2DEF2)),
        useMaterial3: true,
      ),
      routes: {
         RegisterScreen.routeName : (buildContext)=>RegisterScreen(),
         LoginScreen.routeName : (buildContext)=>LoginScreen(),
         PageofLocation.routeName : (buildContext)=>PageofLocation(),
        Splash.routeName : (buildContext)=>Splash(),
         instruction.routeName : (buildContext)=>instruction(),
         informationForPatient.routeName : (buildContext)=>informationForPatient(),
         information.routeName : (buildContext)=>information(),
         HomePage.routeName : (buildContext)=>HomePage(),
        PatientData.routeName : (buildContext)=>PatientData(),
        // ForgetPassword.routeName : (buildContext)=>ForgetPassword(),
      },
      initialRoute: Splash.routeName,
    );
  }
}

