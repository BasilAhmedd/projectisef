import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';

class PageofLocation extends StatelessWidget {
  static const String routeName = "PageOfLocation";
  @override
  Widget build(BuildContext context) {
    double baseWidth = 458;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff0d4f4) ,
        title: Text("Location"),
      ),
      body: Container(
        width: double.infinity,
        child: Container(
          // pageoflocationYh2 (1:163)
          padding: EdgeInsets.fromLTRB(17*fem, 21*fem, 11.89*fem, 46*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            border: Border.all(color: Color(0xff686161)),
            color: Color(0xfff0d4f4),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                offset: Offset(0*fem, 4*fem),
                blurRadius: 2*fem,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupbzx8peY (VVwLrLARy32b6xLaU7bZx8)
                margin: EdgeInsets.fromLTRB(0.65*fem, 0*fem, 161.4*fem, 51*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // logoofalzahimar109wi (1:162)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 73.11*fem, 0*fem),
                      width: 73.95*fem,
                      height: 57*fem,
                      child: Image.asset(
                        'assets/logo-of-alzahimar-10.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // pageoflocationgAx (1:154)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                      child: Text(
                        'Page of Location',
                        style: TextStyle (
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125*ffem/fem,
                          color: Color(0xfffb0909),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupvw6gnjn (VVwLxaV2FTAnbvEYhvVW6g)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.11*fem, 99*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // selectlocationonthemapiNY (1:156)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 52*fem),
                      child: Text(
                        'Select location on the map',
                        style: TextStyle(
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // location12e8 (1:155)
                      width: 217*fem,
                      height: 179*fem,
                      child: Image.asset(
                        'assets/location-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupuectMwJ (VVwM4EzFYf1CwzWjUvUeCt)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 61*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // addnewaddressHpx (1:159)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 53*fem, 2*fem),
                      child: Text(
                        'Add new address',
                        style: TextStyle (
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff892f2f),
                        ),
                      ),
                    ),
                    Container(
                      // rectangle191W4 (1:157)
                      width: 252.11*fem,
                      height: 33*fem,
                      decoration: BoxDecoration (
                        color: Color(0xfffbf2f2),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupnasekiY (VVwM9eztzUzaWpxSVHnasE)
                margin: EdgeInsets.fromLTRB(38*fem, 0*fem, 2.84*fem, 122*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // streetHTa (1:160)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 93*fem, 0*fem),
                      child: Text(
                        'Street',
                        style: TextStyle (
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff9c2424),
                        ),
                      ),
                    ),
                    Container(
                      // rectangle20bz4 (1:158)
                      width: 251.27*fem,
                      height: 33*fem,
                      decoration: BoxDecoration (
                        color: Color(0xfffbf2f2),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}