import 'package:flutter/material.dart';

class AddFrequency extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select frequency',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xfffff2ff),
        iconTheme: const IconThemeData(color: Color(0xfff43d4c)),
      ),
      body: Container(
      width: double.infinity,
      child: Container(
        // addfrequencyAK6 (14:43)
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffff2ff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogrouppdq8dyN (H8xwywpWPvfiEEQDRUPdQ8)
              padding: EdgeInsets.fromLTRB(25.69*fem, 26.43*fem, 43*fem, 41*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroupqge8s72 (H8xvwZPTfEdo4v5B7zQGe8)
                    margin: EdgeInsets.fromLTRB(11.31*fem, 0*fem, 0*fem, 8*fem),
                    padding: EdgeInsets.fromLTRB(5.72*fem, 10.83*fem, 5.72*fem, 14*fem),
                    width: 78*fem,
                    decoration: BoxDecoration (
                      color: Color(0xafffe6ff),
                      borderRadius: BorderRadius.circular(39*fem),
                    ),
                    child: Center(
                      // iconlyglasscalendarAbv (14:51)
                      child: SizedBox(
                        width: 58.28*fem,
                        height: 53.17*fem,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.28*fem, 0*fem),
                          child: Image.asset(
                            'assets/page-1/images/iconly-glass-calendar-YZS.png',
                            width: 58.28*fem,
                            height: 53.17*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // howoftendoyoutakeitqxx (14:49)
                    margin: EdgeInsets.fromLTRB(9.31*fem, 0*fem, 0*fem, 0*fem),
                    child: Text(
                      'How often do you take it?',
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
              // autogroup4bfj9Cx (H8xw6JdtTREUNGKw484BFJ)
              padding: EdgeInsets.fromLTRB(80*fem, 78*fem, 40.25*fem, 5*fem),
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
                    // autogroupheuaEEQ (H8xwHt8vuCkMqeinNkheua)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39.75*fem, 0*fem),
                    width: 200*fem,
                    height: 44*fem,
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
                        'Once daily',
                        textAlign: TextAlign.center,
                        style: TextStyle (
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.245*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20*fem,
                  ),
                  Container(
                    // autogroupjonueJ8 (H8xwNJBEwXMYHXpaJbJonU)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.75*fem, 0*fem),
                    width: 200*fem,
                    height: 44*fem,
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
                        'Twice Daily',
                        textAlign: TextAlign.center,
                        style: TextStyle (
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.245*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20*fem,
                  ),
                  Container(
                    // autogroupoan8dvk (H8xwSYZAQvjMYb2iPLoAN8)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.75*fem, 0*fem),
                    width: 200*fem,
                    height: 44*fem,
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
                        '3 times a day',
                        textAlign: TextAlign.center,
                        style: TextStyle (
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.245*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20*fem,
                  ),
                  Container(
                    // autogroupx7yg1gQ (H8xwX8Fs2AZuBJ2AAGX7YG)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.75*fem, 0*fem),
                    width: 200*fem,
                    height: 44*fem,
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
                        '4 times a day',
                        textAlign: TextAlign.center,
                        style: TextStyle (
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.245*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20*fem,
                  ),
                  Container(
                    // autogroup8graSmi (H8xwbYJB4VB5dB7x678GRA)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                    width: double.infinity,
                    height: 44*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupabilyWk (H8xwhsSxdMvxiYxkFTabiL)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.25*fem, 0*fem),
                          width: 200*fem,
                          height: double.infinity,
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
                              'Only as needed',
                              textAlign: TextAlign.center,
                              style: TextStyle (
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.245*ffem/fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // notificationsquestioncirclecpc (14:56)
                          width: 27.5*fem,
                          height: 27.5*fem,
                          child: Image.asset(
                            'assets/page-1/images/notifications-question-circle.png',
                            width: 27.5*fem,
                            height: 27.5*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          ),);
  }
}