import 'package:dawini/screens/medecines-list.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../databases/db.dart';
import '../medecine.dart';

class AddSchedule extends StatefulWidget {
  @override
  _AddScheduleState createState() => _AddScheduleState();
  final Medecine medecine;
  AddSchedule({required this.medecine});
}

class _AddScheduleState extends State<AddSchedule> {
  DateTime? _startDate = DateTime.now();
  DateTime? _lastDate = DateTime.now();

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _startDate ?? DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked.isBefore(_lastDate!)) {
      setState(() {
        _startDate = picked;
      });
    }
  }

  Future<void> _selectLastDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _lastDate ?? DateTime.now(),
      firstDate: _startDate ?? DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      setState(() {
        _lastDate = picked;
      });
    }
  }

  String formatDate(DateTime? date) {
    return DateFormat('dd-MM-yyyy').format(date ?? DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Schedule',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xfffff2ff),
        iconTheme: const IconThemeData(color: Color(0xfff43d4c)),
      ),
      body: SingleChildScrollView(
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
                  25.69 * fem,
                  26.43 * fem,
                  25.69 * fem,
                  11 * fem,
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fem,
                        0 * fem,
                        0 * fem,
                        16.43 * fem,
                      ),
                      width: 19.18 * fem,
                      height: 18.14 * fem,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fem,
                        0 * fem,
                        212 * fem,
                        8 * fem,
                      ),
                      padding: EdgeInsets.fromLTRB(
                        22.33 * fem,
                        20.25 * fem,
                        22.33 * fem,
                        20.25 * fem,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xafffe6ff),
                        borderRadius: BorderRadius.circular(39 * fem),
                      ),
                      child: Center(
                        child: SizedBox(
                          width: 33.33 * fem,
                          height: 37.5 * fem,
                          child: Image.asset(
                            'assets/page-1/images/frame.png',
                            width: 33.33 * fem,
                            height: 37.5 * fem,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        9.31 * fem,
                        0 * fem,
                        0 * fem,
                        0 * fem,
                      ),
                      constraints: BoxConstraints(
                        maxWidth: 229 * fem,
                      ),
                      child: Text(
                        'How long to take the medicine?',
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
                  52 * fem,
                  44 * fem,
                  53 * fem,
                  70 * fem,
                ),
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
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fem,
                        0 * fem,
                        5 * fem,
                        20 * fem,
                      ),
                      width: 250 * fem,
                      height: 80 * fem,
                      child: GestureDetector(
                        onTap: () => _selectStartDate(context),
                        child: Container(
                          padding: EdgeInsets.all(12 * fem),
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xfff43d4c)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(4 * fem),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${_startDate?.day.toString().padLeft(2, '0')}-${_startDate?.month.toString().padLeft(2, '0')}-${_startDate?.year}',
                                style: TextStyle(
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xfff43d4c),
                                ),
                              ),
                              Icon(
                                Icons.calendar_today,
                                color: Color(0xfff43d4c),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fem,
                        0 * fem,
                        189 * fem,
                        43 * fem,
                      ),
                      child: Text(
                        'Start Date',
                        style: TextStyle(
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3333333333 * ffem / fem,
                          letterSpacing: 0.400000006 * fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fem,
                        0 * fem,
                        0 * fem,
                        20 * fem,
                      ),
                      width: 250 * fem,
                      height: 80 * fem,
                      child: GestureDetector(
                        onTap: () => _selectLastDate(context),
                        child: Container(
                          padding: EdgeInsets.all(12 * fem),
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xfff43d4c)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(4 * fem),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${_lastDate?.day.toString().padLeft(2, '0')}-${_lastDate?.month.toString().padLeft(2, '0')}-${_lastDate?.year}',
                                style: TextStyle(
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xfff43d4c),
                                ),
                              ),
                              Icon(
                                Icons.calendar_today,
                                color: Color(0xfff43d4c),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fem,
                        0 * fem,
                        189 * fem,
                        10 * fem,
                      ),
                      child: Text(
                        'Last Date',
                        style: TextStyle(
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3333333333 * ffem / fem,
                          letterSpacing: 0.400000006 * fem,
                          color: Color(0xff000000),
                        ),
                      ),
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
                          widget.medecine.startDate = _startDate!;
                          widget.medecine.endDate = _lastDate!;
                          print("Navigating to Medicines List");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  MedecinesList(medecine: widget.medecine)));
                          print("name: ${widget.medecine.name}\n");
                          print("form: ${widget.medecine.form}\n");
                          print("frequency: ${widget.medecine.frequency}\n");
                          print("time: ${widget.medecine.time}\n");
                          print("dosage: ${widget.medecine.dosage}\n");
                          print("star: ${widget.medecine.startDate}\n");
                          print("end: ${widget.medecine.endDate}\n");
                          MedicineDB.insertMedicine({
                            'name': widget.medecine.name,
                            'form': widget.medecine.form,
                            'frequency': widget.medecine.frequency,
                            'time': widget.medecine.time.toString(),
                            'dosage': widget.medecine.dosage,
                            'startDate': widget.medecine.startDate.toString(),
                            'endDate': widget.medecine.endDate.toString()
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          backgroundColor: Color(0xccf43d4c),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          shadowColor: Color(0x3f000000),
                          elevation: 2 * fem,
                        ),
                        child: Text(
                          'Next',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.245 * ffem / fem,
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
      ),
    );
  }
}
