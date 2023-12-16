import 'package:flutter/material.dart';
import 'package:dawini/databases/dbhelper.dart';
import 'package:dawini/databases/db.dart';

class ModifyMedecine extends StatefulWidget {
  final int? id;
  ModifyMedecine({this.id});

  @override
  _ModifyMedecineState createState() => _ModifyMedecineState();
}

class _ModifyMedecineState extends State<ModifyMedecine> {
  late TextEditingController frequencyController;
  String medName = 'Medicine Name'; 
  int frequency = 0; 
  List<TimeOfDay> selectedTimes = List.generate(12, (index) => TimeOfDay(hour: 0, minute: 0));

  @override
  void initState() {
    super.initState();
    fetchMedicineData();
    frequencyController = TextEditingController(text: 'Initial Frequency');
    frequencyController.addListener(() {
      setState(() {
        frequency = int.tryParse(frequencyController.text) ?? 0;
      });
    });
  }

  void fetchMedicineData() async {
    if (widget.id != null) {
      final db = await DBHelper.getDatabase();
      final List<Map<String, dynamic>> result = await db.query(
        'Medicine', 
        where: 'id = ?', 
        whereArgs: [widget.id]
      );
      
      if (result.isNotEmpty) {
        setState(() {
          medName = result.first['name'];
          // Set other medicine details if needed
        });
      }
    }
  }

  @override
  void dispose() {
    frequencyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;


    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Medicine Change',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xfffff2ff),
        iconTheme: const IconThemeData(color: Color(0xfff43d4c)),
      ),
      body: Stack(
        children: [
          Container(
            color: Color(0xfffff2ff),
          ),
          Positioned(
            top: 218 * fem,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height - 218 * fem,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40 * fem),
                  topRight: Radius.circular(40 * fem),
                ),
              ),
            ),
          ),
          Positioned(
            left: 35 * fem,
            top: 147 * fem,
            child: Text(
              medName,
              style: TextStyle(
                fontSize: 24 * ffem,
                fontWeight: FontWeight.w700,
                color: Color(0xff34134e),
              ),
            ),
          ),
          Positioned(
            left: 37 * fem,
            top: 61 * fem,
            child: Container(
              width: 78 * fem,
              height: 78 * fem,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(39 * fem),
                color: Color(0xafffe6ff),
              ),
            ),
          ),
          Positioned(
            left: 53 * fem,
            top: 77 * fem,
            child: Image.asset(
              'assets/page-1/images/group-23-bsz.png',
              width: 45 * fem,
              height: 45 * fem,
            ),
          ),
          Positioned(
            top: 234 * fem,
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView( // Wrap the content in a ListView
              children: [
                ListTile(
                  title: Text(
                    "Frequency:",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    "$frequency Times per Day",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        frequency = (frequency + 1) % 13; // Increment by 1, capped at 12
                      });
                    },
                    child: Text(
                      'Increment',
                      style: TextStyle(
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2 * ffem / fem,
                        color: Color(0xfffffefe),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      foregroundColor: Colors.pink[50],
                      backgroundColor: Color.fromARGB(255, 250, 147, 155),
                    ),
                  ),
                ),
                Divider(),
                // Display clocks based on the frequency
                for (int i = 0; i < frequency; i++)
                  ListTile(
                    title: Text(
                      "Time ${i + 1}:",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: TextButton(
                      onPressed: () async {
                        // Open a time picker and update the selected time
                        final selectedTime = await showTimePicker(
                          context: context,
                          initialTime: selectedTimes[i],
                        );

                        if (selectedTime != null) {
                          setState(() {
                            selectedTimes[i] = selectedTime;
                          });
                        }
                      },
                      child: Text(
                        selectedTimes[i].format(context),
                        style: TextStyle(
                          fontSize: 20 * ffem,
                        ),
                      ),
                    ),
                  ),
                Divider(),
                SizedBox(height: 20 * fem), // Gives some spacing at the bottom
                ElevatedButton(
                onPressed: () async {
                    // Convert selectedTimes to a string format
                    String times = selectedTimes.map((time) => time.format(context)).join(',');
                    // Update the medicine in the database
                    await MedicineDB.updateMedicine(widget.id!, {
                      'name': medName,
                      'frequency': frequency.toString(),
                      'time': times,
                    });
                    Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Color(0xb7f43d4c),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20 * fem),
                  ),
                  shadowColor: Color(0x3f000000),
                  elevation: 2 * fem,
                  fixedSize: Size(20 * fem, 40 * fem), // Adjust the width here
                ),
                child: Text(
                  'SAVE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    color: Color(0xfffffefe),
                  ),
                ),
              ),
                SizedBox(height: 20 * fem), // Gives some spacing at the bottom
              ],
            ),
          ),
        ],
      ),
    );
    }
}
