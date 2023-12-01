import 'package:flutter/material.dart';
import '../medecine.dart';
class EmptyMedecinesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(title: const Text('Medecines List',style: TextStyle(color: Colors.black),),
      backgroundColor: const Color(0xfffff2ff),
      iconTheme: const IconThemeData(color: Color(0xfff43d4c)),),
      body: Container(
        // medlistnomedsyetgNQ (706:174)
        width: double.infinity,
        height: 807*fem,
        decoration: const BoxDecoration (
          color: Color(0xfffff2ff),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle32NFE (706:107)
              left: 0*fem,
              top: 225*fem,
              child: Align(
                child: SizedBox(
                  width: 360*fem,
                  height: 582*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only (
                        topLeft: Radius.circular(40*fem),
                        topRight: Radius.circular(40*fem),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle33fk8 (706:108)
              left: 15*fem,
              top: 587*fem,
              child: Align(
                child: SizedBox(
                  width: 329*fem,
                  height: 86*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(15*fem),
                      color: Color(0x26fccae4),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle34LrG (706:109)
              left: 15*fem,
              top: 700*fem,
              child: Align(
                child: SizedBox(
                  width: 329*fem,
                  height: 86*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(15*fem),
                      color: Color(0x26fccae4),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle35pFe (706:110)
              left: 15*fem,
              top: 248*fem,
              child: Align(
                child: SizedBox(
                  width: 329*fem,
                  height: 86*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0x33fdcbe4),
                      borderRadius: BorderRadius.only (
                        topLeft: Radius.circular(11*fem),
                        topRight: Radius.circular(15*fem),
                        bottomRight: Radius.circular(15*fem),
                        bottomLeft: Radius.circular(15*fem),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle36sDv (706:111)
              left: 15*fem,
              top: 361*fem,
              child: Align(
                child: SizedBox(
                  width: 329*fem,
                  height: 86*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(15*fem),
                      color: Color(0x26fccae4),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle37ikL (706:112)
              left: 15*fem,
              top: 474*fem,
              child: Align(
                child: SizedBox(
                  width: 329*fem,
                  height: 86*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(15*fem),
                      color: Color(0x26fccae4),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // listofmedecinespHa (706:113)
              left: 35*fem,
              top: 154*fem,
              child: Align(
                child: SizedBox(
                  width: 192*fem,
                  height: 30*fem,
                  child: Text(
                    'List of Medecines',
                    style: TextStyle (
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.245*ffem/fem,
                      color: Color(0xff34134e),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse3VPi (706:114)
              left: 37*fem,
              top: 68*fem,
              child: Align(
                child: SizedBox(
                  width: 78*fem,
                  height: 78*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(39*fem),
                      color: Color(0xafffe6ff),
                    ),
                  ),
                ),
              ),
            ),
           
            Positioned(
              // photo1604937455095ef2fe3d46fcd (706:117)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 360*fem,
                  height: 807*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xfffff2ff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle383i4 (706:118)
              left: 0*fem,
              top: 225*fem,
              child: Align(
                child: SizedBox(
                  width: 360*fem,
                  height: 582*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only (
                        topLeft: Radius.circular(40*fem),
                        topRight: Radius.circular(40*fem),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // listofmedecinesMye (706:124)
              left: 35*fem,
              top: 154*fem,
              child: Align(
                child: SizedBox(
                  width: 392*fem,
                  height: 30*fem,
                  child: Text(
                    'List of Medecines',
                    style: TextStyle (
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.245*ffem/fem,
                      color: Color(0xff34134e),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // nopillsscheduledfUY (709:73)
              left: 86*fem,
              top: 615*fem,
              child: Align(
                child: SizedBox(
                  width: 388*fem,
                  height: 30*fem,
                  child: Text(
                    'No pills scheduled',
                    style: TextStyle (
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.245*ffem/fem,
                      color: Color(0xccf55864),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse4M6U (706:125)
              left: 37*fem,
              top: 68*fem,
              child: Align(
                child: SizedBox(
                  width: 78*fem,
                  height: 78*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(39*fem),
                      color: Color(0xafffe6ff),
                    ),
                  ),
                ),
              ),
            ),
            
            Positioned(
              // addlistxrx (706:127)
              left: 53*fem,
              top: 84*fem,
              child: Align(
                child: SizedBox(
                  width: 45*fem,
                  height: 45*fem,
                  child: Image.asset(
                    'assets/page-1/images/add-list-s3A.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Positioned(
              // illustrationhealthgY4 (708:438)
              left: 37*fem,
              top: 351*fem,
              child: Align(
                child: SizedBox(
                  width: 279.48*fem,
                  height: 219.3*fem,
                  child: Image.asset(
                    'assets/page-1/images/illustration-health.png',
                    width: 279.48*fem,
                    height: 219.3*fem,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}