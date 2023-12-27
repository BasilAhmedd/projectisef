import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';

class informationForPatient extends StatelessWidget {
  static const String routeName = "informationForPatient";
  @override
  Widget build(BuildContext context) {
    double baseWidth = 469;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // informationforpatientqUQ (1:180)
        padding: EdgeInsets.fromLTRB(5*fem, 13*fem, 5*fem, 45*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0x7f686161)),
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
              // logoofalzahimar9rPW (1:179)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 372*fem, 0*fem),
              width: 71*fem,
              height: 48*fem,
              child: Image.asset(
                'assets/logo-of-alzahimar-10.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // enteryourinformationforpatient (1:166)
              margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 0*fem, 49*fem),
              child: Text(
                'Enter Your information for  patient',
                style: TextStyle (

                  fontSize: 15*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2125*ffem/fem,
                  color: Color(0xfff02323),
                ),
              ),
            ),
            Container(
              // autogrouphqwa4Va (VVwMhe5bxhEiMMwizEHqwa)
              margin: EdgeInsets.fromLTRB(37*fem, 0*fem, 26*fem, 68*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // nameoTA (1:169)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 150*fem, 0*fem),
                    child: Text(
                      'Name',
                      style: TextStyle (

                        fontSize: 15*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // rectangle22j5v (1:174)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                    width: 204*fem,
                    height: 24*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffd1c2c2),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup8au4fEU (VVwMqDhJnTDqLvxuzk8AU4)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 93*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // phoneforthepatientsfamily13S (1:173)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                    child: Text(
                      'Phone for the patient\'s family',
                      style: TextStyle (

                        fontSize: 15*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // rectangle23Wkt (1:175)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                    width: 204*fem,
                    height: 24*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffd1c2c2),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupfhd6Egt (VVwMwoLgChpmDYeBvjFhD6)
              margin: EdgeInsets.fromLTRB(32*fem, 0*fem, 16*fem, 75*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // governoratevpc (1:171)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 118*fem, 0*fem),
                    child: Text(
                      'Governorate',
                      style: TextStyle (

                        fontSize: 15*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // rectangle26Fbz (1:177)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                    width: 204*fem,
                    height: 24*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffd1c2c2),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupppownM2 (VVwN4J9rLVp1VkNdwAppoW)
              margin: EdgeInsets.fromLTRB(32*fem, 0*fem, 16*fem, 75*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // addressugY (1:170)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 148*fem, 0*fem),
                    child: Text(
                      'Address',
                      style: TextStyle (

                        fontSize: 15*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // rectangle24ED2 (1:176)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                    width: 204*fem,
                    height: 24*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffd1c2c2),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupankemCx (VVwN9dLJVsBhUAsX1zaNKE)
              margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 16*fem, 99*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // ageforpatientu4G (1:172)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 123*fem, 0*fem),
                    child: Text(
                      'Age for Patient',
                      style: TextStyle (

                        fontSize: 15*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // rectangle25agC (1:178)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                    width: 204*fem,
                    height: 24*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffd1c2c2),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupmwglVHN (VVwNEsgZNmwhrBRaBGmWgL)
              margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 16*fem, 0*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // backBfz (1:168)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 356*fem, 0*fem),
                    child: Text(
                      'Back',
                      style: TextStyle (

                        fontSize: 15*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125*ffem/fem,
                        color: Color(0xfff01212),
                      ),
                    ),
                  ),
                  Text(
                    // next6nx (1:167)
                    'Next',
                    style: TextStyle (

                      fontSize: 15*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*ffem/fem,
                      color: Color(0xff41812b),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}