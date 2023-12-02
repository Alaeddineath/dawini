import 'package:flutter/material.dart';
import '../medecine.dart';

class AddForm extends StatefulWidget {
  final Medecine medecine;

  AddForm({required this.medecine});

  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  late String selectedForm;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' Select The Form',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xfffff2ff),
        iconTheme: const IconThemeData(color: Color(0xfff43d4c)),
      ),
      body: Container(
        width: double.infinity,
        child: Container(
          // addformMXa (502:199)
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xfffff2ff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupbzucGuS (H8y2ajKeKjDDeb8jMGbzUC)
                padding:
                    EdgeInsets.fromLTRB(23 * fem, 23 * fem, 23 * fem, 41 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupwhjktR2 (H8y1SWiyiv7WxNdrRhWhJk)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 208 * fem, 8 * fem),
                      padding: EdgeInsets.fromLTRB(
                          18.74 * fem, 17.67 * fem, 11.44 * fem, 13.24 * fem),
                      decoration: BoxDecoration(
                        color: Color(0xafffe6ff),
                        borderRadius: BorderRadius.circular(39 * fem),
                      ),
                      child: Center(
                        // group26Buv (502:211)
                        child: SizedBox(
                          width: 47.82 * fem,
                          height: 47.09 * fem,
                          child: Image.asset(
                            'assets/page-1/images/group-26.png',
                            width: 47.82 * fem,
                            height: 47.09 * fem,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // whatformisthemedhNU (502:209)
                      margin: EdgeInsets.fromLTRB(
                          12 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        'What form is the Med?',
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
              const SizedBox(height: 50),
              Column(
                // autogroupblmiujS (H8y1hfxPNS5kwWgESjBLMi)

                children: [
                  Container(
                      // autogrouprbacdoA (H8xu7cRzhY5UMmgAqsrbac)
                      margin: EdgeInsets.fromLTRB(
                          16 * fem, 0 * fem, 25 * fem, 0 * fem),
                      width: double.infinity,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xccf43d4c),
                        borderRadius: BorderRadius.circular(20 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedForm = 'Pill';
                          });
                          widget.medecine.form = selectedForm;
                          Navigator.pushNamed(context, '/add-frequency',
                              arguments: widget.medecine);
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          backgroundColor: Color(0xccf43d4c),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          shadowColor: Color(0x3f000000),
                          elevation: 2 * fem,
                        ),
                        child: Text(
                          'Pill',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.245 * ffem / fem,
                            color: Color(0xfffffefe),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 30 * fem,
                  ),
                  Container(
                      // autogrouprbacdoA (H8xu7cRzhY5UMmgAqsrbac)
                      margin: EdgeInsets.fromLTRB(
                          16 * fem, 0 * fem, 22 * fem, 0 * fem),
                      width: double.infinity,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xccf43d4c),
                        borderRadius: BorderRadius.circular(20 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedForm = 'Injection';
                          });
                          widget.medecine.form = selectedForm;
                          Navigator.pushNamed(context, '/add-frequency',
                              arguments: widget.medecine);
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          backgroundColor: Color(0xccf43d4c),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          shadowColor: Color(0x3f000000),
                          elevation: 2 * fem,
                        ),
                        child: Text(
                          'Injection',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.245 * ffem / fem,
                            color: Color(0xfffffefe),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 30 * fem,
                  ),
                  Container(
                      // autogrouprbacdoA (H8xu7cRzhY5UMmgAqsrbac)
                      margin: EdgeInsets.fromLTRB(
                          16 * fem, 0 * fem, 22 * fem, 0 * fem),
                      width: double.infinity,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xccf43d4c),
                        borderRadius: BorderRadius.circular(20 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedForm = 'Powder';
                          });
                          widget.medecine.form = selectedForm;
                          Navigator.pushNamed(context, '/add-frequency',
                              arguments: widget.medecine);
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          backgroundColor: Color(0xccf43d4c),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          shadowColor: Color(0x3f000000),
                          elevation: 2 * fem,
                        ),
                        child: Text(
                          'Powder',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.245 * ffem / fem,
                            color: Color(0xfffffefe),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 30 * fem,
                  ),
                  Container(
                      // autogrouprbacdoA (H8xu7cRzhY5UMmgAqsrbac)
                      margin: EdgeInsets.fromLTRB(
                          16 * fem, 0 * fem, 22 * fem, 0 * fem),
                      width: double.infinity,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xccf43d4c),
                        borderRadius: BorderRadius.circular(20 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedForm = 'Drops';
                          });
                          widget.medecine.form = selectedForm;
                          Navigator.pushNamed(context, '/add-frequency',
                              arguments: widget.medecine);
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          backgroundColor: Color(0xccf43d4c),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          shadowColor: Color(0x3f000000),
                          elevation: 2 * fem,
                        ),
                        child: Text(
                          'Drops',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.245 * ffem / fem,
                            color: Color(0xfffffefe),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 30 * fem,
                  ),
                  Container(
                      // autogrouprbacdoA (H8xu7cRzhY5UMmgAqsrbac)
                      margin: EdgeInsets.fromLTRB(
                          16 * fem, 0 * fem, 22 * fem, 0 * fem),
                      width: double.infinity,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xccf43d4c),
                        borderRadius: BorderRadius.circular(20 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedForm = 'Inhaler';
                          });
                          widget.medecine.form = selectedForm;
                          Navigator.pushNamed(context, '/add-frequency',
                              arguments: widget.medecine);
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          backgroundColor: Color(0xccf43d4c),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          shadowColor: Color(0x3f000000),
                          elevation: 2 * fem,
                        ),
                        child: Text(
                          'Inhaler',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.245 * ffem / fem,
                            color: Color(0xfffffefe),
                          ),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
