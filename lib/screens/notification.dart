import 'package:flutter/material.dart';
import '../medecine.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // notificationcZr (745:136)
        width: double.infinity,
        height: 807*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // ghfgfb1uor (755:137)
              left: 0*fem,
              top: 1*fem,
              child: Align(
                child: SizedBox(
                  width: 360*fem,
                  height: 811*fem,
                  child: Image.asset(
                    'assets/page-1/images/ghfgfb-1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle41oeL (750:202)
              left: 21*fem,
              top: 37*fem,
              child: Align(
                child: SizedBox(
                  width: 321*fem,
                  height: 166*fem,
                  child: Image.asset(
                    'assets/page-1/images/rectangle-41.png',
                    width: 321*fem,
                    height: 166*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupbyuzHJc (H8xjnTp22B1LXVBwymbYuz)
              left: 21*fem,
              top: 102*fem,
              child: Align(
                child: SizedBox(
                  width: 321*fem,
                  height: 103*fem,
                  child: Image.asset(
                    'assets/page-1/images/auto-group-byuz.png',
                    width: 321*fem,
                    height: 103*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // notificationnmA (750:194)
              left: 36*fem,
              top: 47.0291748047*fem,
              child: Container(
                width: 290.4*fem,
                height: 143.45*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupgea8iPv (H8y8gipUMytTHCaLqkgEA8)
                      margin: EdgeInsets.fromLTRB(0.08*fem, 0*fem, 0.4*fem, 19.2*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroup1ma43h6 (H8y8ntJsMwQyBkXVA21mA4)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.78*fem, 0*fem),
                            width: 49.14*fem,
                            height: 45.77*fem,
                            child: Image.asset(
                              'assets/page-1/images/auto-group-1ma4.png',
                              width: 49.14*fem,
                              height: 45.77*fem,
                            ),
                          ),
                          Container(
                            // hiitstimeforyourmedicationMhn (748:163)
                            margin: EdgeInsets.fromLTRB(0*fem, 3.17*fem, 0*fem, 0*fem),
                            child: Text(
                              'Hi, It’s time for your medication !',
                              style: TextStyle (
                                
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3*ffem/fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // paracetamol1pills8MA (748:172)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle (
                            
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3*ffem/fem,
                            color: Color(0xffd0cdcd),
                          ),
                          children: [
                            TextSpan(
                              text: 'Paracetamol',
                              style: TextStyle (
                                
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3*ffem/fem,
                                color: Color(0xffd0cdcd),
                              ),
                            ),
                            TextSpan(
                              text: '  1 pill(s) ',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // autogroupg6clQxt (H8y8udcdM7FGFC6Qw6G6CL)
                      margin: EdgeInsets.fromLTRB(0.08*fem, 0*fem, 0*fem, 0*fem),
                      width: double.infinity,
                      height: 44.48*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogrouplsgcY3W (H8y8ziJVf6muSNkpFHLSGC)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.35*fem, 17.52*fem, 0*fem),
                            width: 136.4*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8*fem),
                            ),
                            child: Center(
                              child: Text(
                                'Take ',
                                textAlign: TextAlign.center,
                                style: TextStyle (
                                  
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupocwg1St (H8y94DCfaNcaMiTX28oCWG)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.35*fem),
                            width: 136.4*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8*fem),
                            ),
                            child: Center(
                              child: Text(
                                '30 min later',
                                textAlign: TextAlign.center,
                                style: TextStyle (
                                  
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3*ffem/fem,
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
          ],
        ),
      ),
          );
  }
}