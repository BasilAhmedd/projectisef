import 'package:flutter/material.dart';
import 'package:projectiseeff/provider/authProvider.dart';
import 'package:projectiseeff/ui/HomeScreen/HomeScreen.dart';
import 'package:projectiseeff/ui/login/LoginScreen.dart';
import 'package:provider/provider.dart';

class Splash extends StatelessWidget {
  static const String routeName = "Splash";
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),
        (){
      navigate(context);
        }
    );
    return Scaffold(
      body: Image.asset("assets/splashScreen.png"),
    );
  }
  void navigate(BuildContext context)async{
    var authProvider = Provider.of<AuthProviderr>(context,listen: false);
    if(authProvider.isUserLoggedInBefore()){
      await authProvider.retreiveUserFromDataBase();
      Navigator.pushNamed(context, HomePage.routeName);
    }else{
      Navigator.pushNamed(context, LoginScreen.routeName);
    }
  }
}


