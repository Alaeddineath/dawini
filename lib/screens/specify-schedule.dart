import 'package:dawini/screens/add-time.dart';
import 'package:flutter/material.dart';
import '../medecine.dart';

class SpecifySchedule extends StatefulWidget {
  final Medecine medecine;
  SpecifySchedule({required this.medecine});
  @override
  _SpecifyScheduleState createState() => _SpecifyScheduleState();
}

class _SpecifyScheduleState extends State<SpecifySchedule> {
  final TextEditingController amountController = TextEditingController();
  List<bool> selectedDays = List.generate(7, (index) => false);

  void toggleDaySelection(int index) {
    setState(() {
      selectedDays[index] = !selectedDays[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xfffff2ff),
        iconTheme: const IconThemeData(color: Color(0xfff43d4c)),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                  padding: EdgeInsets.fromLTRB(
                      25.69 * fem, 26.43 * fem, 43 * fem, 41 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            11.31 * fem, 0 * fem, 0 * fem, 8 * fem),
                        padding: EdgeInsets.fromLTRB(
                            5.72 * fem, 10.83 * fem, 5.72 * fem, 14 * fem),
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
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 8.28 * fem, 0 * fem),
                              child: Image.asset(
                                'assets/page-1/images/iconly-glass-calendar-YZS.png',
                                width: 58.28 * fem,
                                height: 53.17 * fem,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            9.31 * fem, 0 * fem, 0 * fem, 0 * fem),
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
                        left: 82 * fem,
                        top: 48 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 180 * fem,
                            height: 40 * fem,
                            child: Text(
                              'Select the days',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.245 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 30 * fem,
                        top: 207 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 267 * fem,
                            height: 32 * fem,
                            child: Text(
                              'Type how much per day:',
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
                      // Add TextField between "Type how much per day" and "Enter how often do you take it"
                      Positioned(
                        left: 33 * fem,
                        top: 270 *
                            fem, // Adjust the position based on your layout
                        child: SizedBox(
                          width: 260 * fem,
                          height: 38 * fem,
                          child: TextField(
                            controller: amountController,
                            decoration: const InputDecoration(
                                labelText: 'enter the amount'),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 72 * fem,
                        top: 325 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 195 * fem,
                            height: 16 * fem,
                            child: Text(
                              'Enter how often do you take it',
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
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom:
                                  100.0), // Adjust the bottom padding as needed
                          child: FractionallySizedBox(
                            widthFactor: 0.8,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  AddTime(medecine: widget.medecine)));
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
                        ),
                      ),
                      Positioned(
                        left: 34 * fem,
                        top: 93 * fem,
                        child: Container(
                          width: 340 * fem,
                          height: 40 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              dayButton(
                                index: 0,
                                assetPath: 'assets/page-1/images/saturday.png',
                                fem: fem,
                              ),
                              dayButton(
                                index: 1,
                                assetPath: 'assets/page-1/images/sunday.png',
                                fem: fem,
                              ),
                              dayButton(
                                index: 2,
                                assetPath: 'assets/page-1/images/monday.png',
                                fem: fem,
                              ),
                              dayButton(
                                index: 3,
                                assetPath: 'assets/page-1/images/tuesday.png',
                                fem: fem,
                              ),
                              dayButton(
                                index: 4,
                                assetPath: 'assets/page-1/images/wednesday.png',
                                fem: fem,
                              ),
                              dayButton(
                                index: 5,
                                assetPath: 'assets/page-1/images/thursday.png',
                                fem: fem,
                              ),
                              dayButton(
                                index: 6,
                                assetPath: 'assets/page-1/images/friday.png',
                                fem: fem,
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
        ),
      ),
    );
  }

  Widget dayButton(
      {required int index, required String assetPath, required double fem}) {
    return GestureDetector(
      onTap: () {
        toggleDaySelection(index);
      },
      child: Container(
        width: 40 * fem,
        height: 40 * fem,
        child: Image.asset(
          assetPath,
          fit: BoxFit.contain,
          color: selectedDays[index] ? Colors.blue : null,
        ),
      ),
    );
  }
}
