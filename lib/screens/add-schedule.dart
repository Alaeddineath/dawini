import 'package:flutter/material.dart';
import '../medecine.dart';
class AddSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // addscheduleE9z (303:117)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfffff2ff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup15re9Gx (H8xvHKzAQcFTjRBvPF15RE)
              padding: EdgeInsets.fromLTRB(25.69*fem, 26.43*fem, 25.69*fem, 11*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // arrowsarrowleftfWC (303:140)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16.43*fem),
                    width: 19.18*fem,
                    height: 18.14*fem,
                    child: Image.asset(
                      'assets/page-1/images/arrows-arrow-left-DoJ.png',
                      width: 19.18*fem,
                      height: 18.14*fem,
                    ),
                  ),
                  Container(
                    // autogrouplzpgZLg (H8xup6GYcZ5EiR5jWKLZpG)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 212*fem, 8*fem),
                    padding: EdgeInsets.fromLTRB(22.33*fem, 20.25*fem, 22.33*fem, 20.25*fem),
                    decoration: BoxDecoration (
                      color: Color(0xafffe6ff),
                      borderRadius: BorderRadius.circular(39*fem),
                    ),
                    child: Center(
                      // frame4oE (303:181)
                      child: SizedBox(
                        width: 33.33*fem,
                        height: 37.5*fem,
                        child: Image.asset(
                          'assets/page-1/images/frame.png',
                          width: 33.33*fem,
                          height: 37.5*fem,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // howlongtotakethemedicineCPe (303:124)
                    margin: EdgeInsets.fromLTRB(9.31*fem, 0*fem, 0*fem, 0*fem),
                    constraints: BoxConstraints (
                      maxWidth: 229*fem,
                    ),
                    child: Text(
                      'How long to take the medicine?',
                      style: TextStyle (
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.245*ffem/fem,
                        color: Color(0xff34134e),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupkhvuryz (H8xuukmmukuf4VMvHKKhvU)
              padding: EdgeInsets.fromLTRB(52*fem, 44*fem, 53*fem, 70*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only (
                  topLeft: Radius.circular(40*fem),
                  topRight: Radius.circular(40*fem),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // timeselectorMfr (303:121)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 20*fem),
                    width: 250*fem,
                    height: 80*fem,
                    child: Container(
                      // inputfield67e (I303:121;23:2067)
                      padding: EdgeInsets.fromLTRB(118.5*fem, 0*fem, 118.5*fem, 0*fem),
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xfff43d4c)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(4*fem),
                      ),
                      child: Text(
                        '|',
                        textAlign: TextAlign.center,
                        style: TextStyle (                          fontSize: 56*ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.3303571429*ffem/fem,
                          color: Color(0xfff43d4c),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // startdateMZN (303:141)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 189*fem, 43*fem),
                    child: Text(
                      'Start Date',
                      style: TextStyle (
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3333333333*ffem/fem,
                        letterSpacing: 0.400000006*fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // timeselectorFPr (303:120)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 156*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // inputfieldZQY (I303:120;23:2067)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                          padding: EdgeInsets.fromLTRB(121*fem, 0*fem, 121*fem, 0*fem),
                          width: double.infinity,
                          height: 80*fem,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xfff43d4c)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(4*fem),
                          ),
                          child: Text(
                            '|',
                            textAlign: TextAlign.center,
                            style: TextStyle (
                              fontSize: 56*ffem,
                              fontWeight: FontWeight.w300,
                              height: 1.3303571429*ffem/fem,
                              color: Color(0xfff43d4c),
                            ),
                          ),
                        ),
                        Text(
                          // labelbME (I303:120;23:2068)
                          'Last Date',
                          style: TextStyle (
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3333333333*ffem/fem,
                            letterSpacing: 0.400000006*fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroup8s7nigk (H8xv2aujBPMdiLsfyw8S7N)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                    width: 250*fem,
                    height: 50*fem,
                    decoration: BoxDecoration (
                      color: Color(0xb7f43d4c),
                      borderRadius: BorderRadius.circular(20*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Next',
                        textAlign: TextAlign.center,
                        style: TextStyle (
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.245*ffem/fem,
                          color: Color(0xfffffefe),
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
          );
  }
}