import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';

class information extends StatelessWidget {
  static const String routeName = "info";
  @override
  Widget build(BuildContext context) {
    double baseWidth = 457;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
     backgroundColor: Color(0xffefcfeb),
        title: Text("Information" ),
      ),
      body: Container(
        width: double.infinity,
        child: Container(
          // informationEYc (1:150)
          padding: EdgeInsets.fromLTRB(7.55*fem, 40.23*fem, 12.45*fem, 28*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            border: Border.all(color: Color(0xff686161)),
            color: Color(0xffefcfeb),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                offset: Offset(0*fem, 4*fem),
                blurRadius: 2*fem,
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // alzheimersisthemostcommoncause (1:144)
                  margin: EdgeInsets.fromLTRB(3.09*fem, 0*fem, 0*fem, 21.44*fem),
                  constraints: BoxConstraints (
                    maxWidth: 425*fem,
                  ),
                  child: Text(
                    'Alzheimer\'s is the most common cause of dementia, a general term for memory loss and other cognitive abilities serious enough to interfere with daily life. Alzheimer\'s disease accounts for 60-80% of dementia cases. Alzheimer\'s is not a normal part of aging.',
                    style: TextStyle (
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      height: 1.2125*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  // alzheimersdiseaseisabraindisor (1:145)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26.6*fem),
                  constraints: BoxConstraints (
                    maxWidth: 437*fem,
                  ),
                  child: Text(
                    'Alzheimer\'s disease is a brain disorder that slowly destroys memory and thinking skills and, eventually, the ability to carry out the simplest tasks. In most people with the disease — those with the late-onset type symptoms first appear in their mid-60s.',
                    style: TextStyle (
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      height: 1.2125*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(

                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.22*fem, 64.6*fem),
                  width: 336.25*fem,
                  height: 290.91*fem,
                  child: Image.asset(
                    'assets/photo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}