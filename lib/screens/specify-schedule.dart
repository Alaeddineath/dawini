import 'package:flutter/material.dart';

class SpecifySchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xfffff2ff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(25.69 * fem, 26.43 * fem, 25.69 * fem, 41 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16.43 * fem),
                    width: 19.18 * fem,
                    height: 18.14 * fem,
                    child: Image.asset(
                      'assets/page-1/images/arrows-arrow-left-6pU.png',
                      width: 19.18 * fem,
                      height: 18.14 * fem,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(11.31 * fem, 0 * fem, 0 * fem, 8 * fem),
                    padding: EdgeInsets.fromLTRB(5.72 * fem, 10.83 * fem, 5.72 * fem, 14 * fem),
                    width: 78 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xafffe6ff),
                      borderRadius: BorderRadius.circular(39 * fem),
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 58.28 * fem,
                        height: 53.17 * fem,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 8.28 * fem, 0 * fem),
                          child: Image.asset(
                            'assets/page-1/images/iconly-glass-calendar.png',
                            width: 58.28 * fem,
                            height: 53.17 * fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(9.31 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      'Specify your schedule',
                      style: TextStyle(
                        fontSize: 24 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.245 * ffem / fem,
                        color: Color(0xff34134e),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 582 * fem,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40 * fem),
                  topRight: Radius.circular(40 * fem),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 22 * fem,
                    top: 48 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 166 * fem,
                        height: 32 * fem,
                        child: Text(
                          'Select the days',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.245 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 22 * fem,
                    top: 196 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 267 * fem,
                        height: 32 * fem,
                        child: Text(
                          'Type how much per day :',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.245 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 72 * fem,
                    top: 266 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 187 * fem,
                        height: 18 * fem,
                        child: Text(
                          'enter how often do you take it',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.245 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 81 * fem,
                    top: 462 * fem,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your logic here for the 'Next' button
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xb7f43d4c),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10 * fem,
                          horizontal: 20 * fem,
                        ),
                        child: Text(
                          'Next',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.245 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10 * fem,
                    top: 93 * fem,
                    child: Container(
                      width: 340 * fem,
                      height: 40 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 40 * fem,
                            height: 40 * fem,
                            child: Image.asset(
                              'assets/page-1/images/saturday.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            width: 10 * fem,
                          ),
                          Container(
                            width: 40 * fem,
                            height: 40 * fem,
                            child: Image.asset(
                              'assets/page-1/images/sunday.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            width: 10 * fem,
                          ),
                          Container(
                            width: 40 * fem,
                            height: 40 * fem,
                            child: Image.asset(
                              'assets/page-1/images/monday.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            width: 10 * fem,
                          ),
                          Container(
                            width: 40 * fem,
                            height: 40 * fem,
                            child: Image.asset(
                              'assets/page-1/images/tuesday.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            width: 10 * fem,
                          ),
                          Container(
                            width: 40 * fem,
                            height: 40 * fem,
                            child: Image.asset(
                              'assets/page-1/images/wednesday.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            width: 10 * fem,
                          ),
                          Container(
                            width: 40 * fem,
                            height: 40 * fem,
                            child: Image.asset(
                              'assets/page-1/images/thursday.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            width: 10 * fem,
                          ),
                          Container(
                            width: 40 * fem,
                            height: 40 * fem,
                            child: Image.asset(
                              'assets/page-1/images/friday.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
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
