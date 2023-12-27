import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectiseeff/database/model/User.dart' as MyUser;
import 'package:projectiseeff/database/UsersDao.dart';
import 'package:projectiseeff/provider/authProvider.dart';
import 'package:projectiseeff/ui/DialogUtils.dart';
import 'package:projectiseeff/ui/common/CustomFormField.dart';
import 'package:projectiseeff/ui/firebaseErrorCodes.dart';
import 'package:projectiseeff/ui/login/LoginScreen.dart';
// import 'package:projectiseeff/provider/authProvider.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = "RegisterScreen";
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
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
                      "Sign Up",
                      style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),
                    )
                  ]),
                  CustomFormField(
                      hint: "Full Name",
                      keyboardType: TextInputType.name,
                      controller: nameController,
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'Please enter a Name';
                        }
                      }),

                  CustomFormField(
                      hint: "User Name",
                      keyboardType: TextInputType.name,
                      controller: usernameController,
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'Please enter a valid username';
                        }
                      }),
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
                  CustomFormField(
                    hint: "Password Confirmation",
                    keyboardType: TextInputType.text,
                    controller: confirmPasswordController,
                    securetext: true,
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'Please enter a confirmation password';
                        }
                        if (text != passwordController.text) {
                          return 'Password does not match!';
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
                        createAccount();
                      },
                      child: Text("Create Account",style: TextStyle(color:Colors.white),)),
                  SizedBox(height: 10,),
                  Center(child: Text("Already Have an Account ?" , style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap:(){
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    }
                      ,child: Center(child: Text("Sign In" , style: TextStyle(color: Colors.blue ,fontSize: 20),)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void createAccount() async {
    if(formKey.currentState?.validate() == false){
      return ;
    }
    var authProvider = Provider.of<AuthProviderr>(context,listen: false);
   try{
      DialogUtils.showLoading(context, "Loading...");
      authProvider.register(emailController.text, passwordController.text
          , nameController.text,usernameController.text )
     ;
     DialogUtils.HideDialog(context);
     DialogUtils.showMessage(context, "Registered Successfully" ,
     posActionName: "Ok" ,
     posAction: (){
       Navigator.pushNamed(context, LoginScreen.routeName);
     }
     );
   } on FirebaseAuthException catch (e) {
     if (e.code == firebaseErrorCodes.weakPassword) {
       DialogUtils.showMessage(context,'The password provided is too weak.');
     } else if (e.code == firebaseErrorCodes.emailInuse) {
       DialogUtils.showMessage(context,'The account already exists for that email.');
     }
   } catch (e) {
     DialogUtils.showMessage(context,'SomeThing Went Wrong.');
   }
   }
  }

