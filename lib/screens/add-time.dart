import 'package:dawini/screens/add-schedule.dart';
import 'package:flutter/material.dart';
import '../medecine.dart';

class AddTime extends StatefulWidget {
  final Medecine medecine;
  final String frequency; // New property to store the selected frequency
  AddTime({required this.medecine, required this.frequency});
  @override
  AddTimeState createState() => AddTimeState();
}

class AddTimeState extends State<AddTime> {
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    int numberOfTimeBoxes = 1; // Default to 1

    // Determine the number of time boxes based on the selected frequency
    if (widget.frequency == '2') {
      numberOfTimeBoxes = 2;
    } else if (widget.frequency == '3') {
      numberOfTimeBoxes = 3;
    } else if (widget.frequency == '4') {
      numberOfTimeBoxes = 4;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Time',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xfffff2ff),
        iconTheme: const IconThemeData(color: Color(0xfff43d4c)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(
                  25.69 * fem, 26.43 * fem, 51 * fem, 13 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 16.43 * fem),
                    width: 19.18 * fem,
                    height: 18.14 * fem,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 182.69 * fem, 8 * fem),
                    padding: EdgeInsets.fromLTRB(
                        14 * fem, 14 * fem, 14 * fem, 14 * fem),
                    decoration: BoxDecoration(
                      color: Color(0xafffe6ff),
                      borderRadius: BorderRadius.circular(39 * fem),
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 50 * fem,
                        height: 50 * fem,
                        child: Image.asset(
                          'assets/page-1/images/group-24.png',
                          width: 50 * fem,
                          height: 50 * fem,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        9.31 * fem, 0 * fem, 0 * fem, 0 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 274 * fem,
                    ),
                    child: Text(
                      'When do you need to take the  doses?',
                      style: TextStyle(
                        fontSize: 23 * ffem,
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
              padding:
                  EdgeInsets.fromLTRB(39 * fem, 57 * fem, 27 * fem, 70 * fem),
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
                children: List.generate(
                  numberOfTimeBoxes,
                  (index) => Card(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 12 * fem, 0 * fem),
                      height: 140 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              TimeOfDay? pickedTime = await showTimePicker(
                                context: context,
                                initialTime: selectedTime,
                              );

                              if (pickedTime != null) {
                                setState(() {
                                  selectedTime = pickedTime;
                                });
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  25 * fem, 0 * fem, 5.5 * fem, 0 * fem),
                              width: 200 * fem,
                              height: 160 * fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                    padding: EdgeInsets.fromLTRB(
                                        15 * fem, 0 * fem, 15 * fem, 0 * fem),
                                    width: double.infinity,
                                    height: 80 * fem,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xfff7737e)),
                                      color: Color(0xffffffff),
                                      borderRadius:
                                          BorderRadius.circular(4 * fem),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20 * fem,
                                          horizontal: 15 * fem),
                                      child: Text(
                                        '${selectedTime.hour}:${selectedTime.minute}',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 35 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3303571429 * ffem / fem,
                                          color:
                                              Color.fromARGB(255, 230, 91, 91),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Time',
                                    style: TextStyle(
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3333333333 * ffem / fem,
                                      letterSpacing: 0.400000006 * fem,
                                      color: Color(0xff5a426c),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 100.0),
                child: FractionallySizedBox(
                  widthFactor: 0.8,
                  child: ElevatedButton(
                    onPressed: () {
                      widget.medecine.time = selectedTime.toString();
                      print("time: ${widget.medecine.time}\n");
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              AddSchedule(medecine: widget.medecine)));
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
          ],
        ),
      ),
    );
  }
}
