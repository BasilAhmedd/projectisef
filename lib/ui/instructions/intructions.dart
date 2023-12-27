import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';

class instruction extends StatelessWidget {
  static const String routeName = "instruction";
  @override
  Widget build(BuildContext context) {
    double baseWidth = 435;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff0d0eb) ,
        title: Text("Instructions"),
      ),
      body: Container(
        width: double.infinity,
        child: Container(
          // instructionbHN (1:140)
          padding: EdgeInsets.fromLTRB(12.77*fem, 9*fem, 23*fem, 55*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            border: Border.all(color: Color(0xff686161)),
            color: Color(0xfff0d0eb),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                offset: Offset(0*fem, 4*fem),
                blurRadius: 2*fem,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // autogroupfzvcUMA (VVwLCmQgz5ZiWm1w7ifZvC)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 150.03*fem, 78*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // logoofalzahimar1QEp (1:135)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 100.57*fem, 17*fem),
                      width: 72.63*fem,
                      height: 49*fem,
                      child: Image.asset(
                        'assets/logo-of-alzahimar-10.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.23*fem, 0*fem, 0*fem, 90*fem),
                width: 387.91*fem,
                height: 408*fem,
                child: Image.asset(
                  'assets/AlzahimarInfo.png',
                  fit: BoxFit.cover,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}