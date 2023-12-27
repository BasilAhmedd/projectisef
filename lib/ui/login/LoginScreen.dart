import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectiseeff/database/UsersDao.dart';
import 'package:projectiseeff/provider/authProvider.dart';
import 'package:projectiseeff/ui/DialogUtils.dart';
import 'package:projectiseeff/ui/HomeScreen/HomeScreen.dart';
import 'package:projectiseeff/ui/Register/RegisterScreen.dart';
import 'package:projectiseeff/ui/common/CustomFormField.dart';
import 'package:projectiseeff/ui/firebaseErrorCodes.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "LoginScreen";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF2DEF2),
        ),
        backgroundColor: Color(0xFFF2DEF2),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(alignment: Alignment.center, children: [
                    Image.asset(
                      "assets/rectangle-5.png",
                      width: 200,
                    ),
                    Text(
                      "Login",
                      style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),
                    )
                  ]),

                  CustomFormField(
                    hint: "Email",
                    keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'Please enter a valid email';
                        }
                        bool emailValid = RegExp
                          (r"^[a-zA-Z0-9.a-zA-Z0.9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(text);
                        if (!emailValid) {
                          return 'Please enter a valid email';
                        }
                      }
                  ),
                  CustomFormField(
                    hint: "Password",
                    keyboardType: TextInputType.text,
                    controller: passwordController,
                    securetext: true,
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'Please enter a valid Password';
                        }
                        if (text.length < 6) {
                          return 'Password should be at least 6 characters';
                        }
                      }
                  ),

                  SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:MaterialStateProperty.all<Color>(Color(0xFF2A57FD))
                    ),
                      onPressed: () {
                        Login();
                      },
                      child: Text("Login",style: TextStyle(color:Colors.white))
                  ),
                  SizedBox(height: 10,),
                  Center(child: Text("Dont Have an Account ?" , style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 20,),
                  InkWell(
                      onTap:(){
                        Navigator.pushNamed(context, RegisterScreen.routeName);
                      }
                      ,child: Center(child: Text("Sign Up" , style: TextStyle(color: Colors.blue ,fontSize: 20),)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void Login() async{
    if(formKey.currentState?.validate() == false){
      return ;
    }
    var authProvider = Provider.of<AuthProviderr>(context,listen: false);
    try {
      DialogUtils.showLoading(context, 'Loading' , isCancelable: false);
      await authProvider.login(emailController.text, passwordController.text);
      DialogUtils.HideDialog(context);
      DialogUtils.showMessage(context, "User logged In Successfully" ,
          posActionName: "Ok",
        posAction: (){
        Navigator.pushNamed(context, HomePage.routeName);
        },
        negActionName: "Cancel"
      );

    } on FirebaseAuthException catch (e) {
      DialogUtils.HideDialog(context);
      if (e.code == firebaseErrorCodes.usernotfound||
          e.code == firebaseErrorCodes.wrongpassword||
          e.code == firebaseErrorCodes.InvalidCredintials
      ) {
        DialogUtils.showMessage(context, "WrongEmail Or Password" ,
        posActionName: "Ok"
        );
      }
    }
  }
}
