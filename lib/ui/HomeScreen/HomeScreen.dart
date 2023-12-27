import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:projectiseeff/provider/authProvider.dart';
import 'package:projectiseeff/ui/DialogUtils.dart';
import 'package:projectiseeff/ui/LocationScreen/LocationScreen.dart';
import 'package:projectiseeff/ui/PatientData/PatientData.dart';
import 'dart:ui';

import 'package:projectiseeff/ui/information/information.dart';
import 'package:projectiseeff/ui/instructions/intructions.dart';
import 'package:projectiseeff/ui/login/LoginScreen.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  static const String routeName = "HomePage";
  @override
  Widget build(BuildContext context) {
    double baseWidth = 479;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF2DEF2),
        leading: IconButton(onPressed: (){
          logout(context);

        }, icon: Icon(Icons.logout)),
      ),
      body: Container(
        width: double.infinity,
        child: Container(
          // homepageuZ6 (1:132)
          padding: EdgeInsets.fromLTRB(15*fem, 2*fem, 26*fem, 39*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            border: Border.all(color: Color(0xfffffdfd)),
            color: Color(0xfff0d7ea),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                offset: Offset(0*fem, 4*fem),
                blurRadius: 2*fem,
              ),
              BoxShadow(
                color: Color(0x3f000000),
                offset: Offset(0*fem, 4*fem),
                blurRadius: 2*fem,
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // autogrouptwhi7QG (VVwHhWFQ5ndBkkSw6nTWhi)
                  margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 23*fem),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // logoofalzahimar4SBe (1:131)
                        margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 27*fem, 0*fem),
                        width: 87*fem,
                        height: 49*fem,
                        child: Image.asset(
                          'assets/logo-of-alzahimar-10.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // autogroup6zmzweC (VVwHu5kSXa95E8qnRR6zMz)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                        width: 46*fem,
                        height: 28*fem,
                        decoration: BoxDecoration (
                          color: Color(0xfffffdfd),
                        ),
                        child: Center(
                          child: Text(
                            'EN',
                            style: TextStyle (

                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupv9vncVS (VVwHy5dn9bfqhxDSjXv9Vn)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 25*fem),
                        padding: EdgeInsets.fromLTRB(32*fem, 6*fem, 32*fem, 7*fem),
                        width: 175*fem,
                        decoration: BoxDecoration (
                          border: Border.all(color: Color(0x7f000000)),
                          color: Color(0xfffff3f3),
                        ),
                        child: Text(
                          'Search',
                          style: TextStyle (

                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff9e9d9d),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // autogroup1exlUXe (VVwJ7k41fKeqQtXNk81exL)
                  margin: EdgeInsets.fromLTRB(22*fem, 0*fem, 0*fem, 16*fem),
                  height: 27*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Container(
                        // instructionGyJ (1:126)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 6*fem),
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, instruction.routeName);
                          },
                          child: const Text(
                            'Instruction',
                            style: TextStyle (
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              height: 2,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // informationC6G (1:127)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 53*fem, 0*fem),
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, information.routeName);
                          },
                          child:const Text(
                            'Information',
                            style: TextStyle (
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              height: 2,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, PageofLocation.routeName);
                        },
                        child: const Text(
                          'Location',
                          style: TextStyle (
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            height: 2,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Center(
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, PatientData.routeName);
                  }, child:Text("Add Patient")),
                ),
                Container(
                  // autogroupkd8g7sS (VVwJWpDuGS4vmFNFTqkD8G)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 346*fem, 19*fem),
                  padding: EdgeInsets.fromLTRB(18*fem, 0*fem, 17*fem, 0*fem),
                  height: 21*fem,
                  decoration: BoxDecoration (
                    color: Color(0xffd9d9d9),
                  ),
                  child: Text(
                    'Contact ',
                    style: TextStyle (
                      fontSize: 12*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  // autogroupulctCdz (VVwJe9M2EpCzyaYxhiuLCt)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 343*fem, 44*fem),
                  padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 26*fem, 0*fem),
                  height: 20*fem,
                  decoration: BoxDecoration (
                    color: Color(0xffd9d9d9),
                  ),
                  child: Text(
                    'Setting\n',
                    style: TextStyle (

                      fontSize: 12*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(38*fem, 0*fem, 0*fem, 27*fem),
                  width: 381*fem,
                  height: 196*fem,
                  child: Image.asset(
                    'assets/photo1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 0*fem, 70*fem),
                  width: 419*fem,
                  height: 92*fem,
                  child: Image.asset(
                    'assets/photo2.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45*fem),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 62*fem, 2*fem),
                        padding: EdgeInsets.fromLTRB(9*fem, 0*fem, 9*fem, 0*fem),
                        width: 84*fem,
                        height: 20*fem,
                        decoration: BoxDecoration (
                          color: Color(0xffd9d9d9),
                        ),
                        child: Text(
                          'Contact ',
                          style: TextStyle (
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 70*fem, 0*fem),
                        padding: EdgeInsets.fromLTRB(19*fem, 0*fem, 26*fem, 0*fem),
                        height: 20*fem,
                        decoration: BoxDecoration (
                          color: Color(0xffd9d9d9),
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, LoginScreen.routeName);
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle (
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 129*fem,
                        height: 20*fem,
                        decoration: BoxDecoration (
                          color: Color(0xffd9d9d9),
                        ),
                        child: Center(
                          child: Text(
                            'Relationship',
                            style: TextStyle (
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                  height: 20*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(

                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 60*fem, 0*fem),
                        width: 83*fem,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: Color(0xffd9d9d9),
                        ),
                        child: Center(
                          child: Text(
                            'Review',
                            style: TextStyle (
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupnt4ycFn (VVwKRTNrcStMkAnSuinT4Y)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 95*fem, 0*fem),
                        width: 84*fem,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: Color(0xffd9d9d9),
                        ),
                        child: Center(
                          child: Text(
                            'Help',
                            style: TextStyle (
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 84*fem,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: Color(0xffd9d9d9),
                        ),
                        child: Center(
                          child: Text(
                            'About',
                            style: TextStyle (

                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void logout(BuildContext context) {
    var authProvider = Provider.of<AuthProviderr>(context , listen: false);
    DialogUtils.showMessage(context, "Are You Sure To Log out ?",
    posActionName: "Yes" ,
    negActionName: "Cancel",
        posAction:(){
      authProvider.logout();
      Navigator.pushNamed(context, LoginScreen.routeName);
    }
    );

  }
}