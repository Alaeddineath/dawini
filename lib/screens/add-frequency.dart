import 'package:dawini/screens/add-time.dart';
import 'package:dawini/screens/specify-schedule.dart';
import 'package:flutter/material.dart';
import '../medecine.dart';

class AddFrequency extends StatefulWidget {
  final Medecine medecine;
  AddFrequency({required this.medecine});

  @override
  _AddFrequencyState createState() => _AddFrequencyState();
}

class _AddFrequencyState extends State<AddFrequency> {
  late String frequency;

  void _navigateToAddTime(String selectedFrequency) {
    setState(() {
      frequency = selectedFrequency;
    });
    widget.medecine.frequency = frequency;
    if (frequency == 'only as needed') {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SpecifySchedule(medecine: widget.medecine),
      ));
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>
            AddTime(medecine: widget.medecine, frequency: frequency),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' Select The Frequency',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xfffff2ff),
        iconTheme: const IconThemeData(color: Color(0xfff43d4c)),
      ),
      body: Container(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
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
                          11.31 * fem, 0 * fem, 0 * fem, 1 * fem),
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
                        'How often do you take it?',
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
                padding: EdgeInsets.fromLTRB(
                    50 * fem, 60 * fem, 40.25 * fem, 50 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40 * fem),
                    topRight: Radius.circular(40 * fem),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Buttons for different frequencies
                    ElevatedButton(
                      onPressed: () => _navigateToAddTime('1'), // For 'Once',
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
                        'Once',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.245 * ffem / fem,
                          color: Color(0xfffffefe),
                        ),
                      ),
                    ),
                    SizedBox(height: 20 * fem),
                    ElevatedButton(
                      onPressed: () => _navigateToAddTime('2'), // For 'Twice',
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
                        'twice daily',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.245 * ffem / fem,
                          color: Color(0xfffffefe),
                        ),
                      ),
                    ),
                    SizedBox(height: 30 * fem),
                    ElevatedButton(
                      onPressed: () =>
                          _navigateToAddTime('3'), // For 'Three times',
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
                        '3 times daily',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.245 * ffem / fem,
                          color: Color(0xfffffefe),
                        ),
                      ),
                    ),
                    SizedBox(height: 30 * fem),
                    ElevatedButton(
                      onPressed: () =>
                          _navigateToAddTime('4'), // For 'four times',
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
                        '4 times daily',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.245 * ffem / fem,
                          color: Color(0xfffffefe),
                        ),
                      ),
                    ),
                    SizedBox(height: 30 * fem),
                    ElevatedButton(
                      onPressed: () =>
                          _navigateToAddTime('only as needed'),
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
                        'only as needed',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.245 * ffem / fem,
                          color: Color(0xfffffefe),
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
    );
  }
}