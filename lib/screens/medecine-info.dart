import 'package:flutter/material.dart';
import 'package:dawini/databases/db.dart';

class MedecineInfo extends StatefulWidget {
  final int index;

  MedecineInfo({Key? key, required this.index}) : super(key: key);

  @override
  _MedecineInfoState createState() => _MedecineInfoState();
}

class _MedecineInfoState extends State<MedecineInfo> {
  late Map<String, dynamic> med; // Define the Medecine object

  @override
  void initState() {
    super.initState();
    fetchMedicineData();
  }

  void fetchMedicineData() async {
    final medicines = await MedicineDB.getAllMedicines();
    if (widget.index < medicines.length) {
      final Map<String, dynamic> medicineData = medicines[widget.index];
      setState(() {
        // Initialize med based on the retrieved data
        med = medicineData;
      });
    }
  }

  void _addDay() async {
    // Check if med is not null and has an id
    if (med != null && med['id'] != null) {
      // Update the database
      await MedicineDB.addDay(med['id']);

      // Calculate the new duration and update the med object
      int currentDuration = med['duration'];
      int newDuration = currentDuration + 1;
      setState(() {
        med['duration'] = newDuration;
      });

      // Navigate back to the previous screen
      Navigator.pop(context);
    }
  }

  void _deleteMedicine() async {
    // Check if med is not null and has an id
    if (med != null && med['id'] != null) {
      // Delete the medicine from the database
      await MedicineDB.deleteMedicine(med['id']);

      // Navigate back to the previous screen
      Navigator.pop(context);
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
          'Medecine Info',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xfffff2ff),
        iconTheme: const IconThemeData(color: Color(0xfff43d4c)),
      ),
      body: Stack(
        // our page components in columns
        children: [
          Container(
            // pink background
            color: Color(0xfffff2ff),
          ),
          Positioned(
            // White rounded rectangle
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
            // 'Med name' text
            left: 35 * fem,
            top: 147 * fem,
            child: Text(
              med['name'],
              style: TextStyle(
                fontSize: 24 * ffem,
                fontWeight: FontWeight.w700,
                color: Color(0xff34134e),
              ),
            ),
          ),
          Positioned(
            // med circle background
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
            // med image
            left: 53 * fem,
            top: 77 * fem,
            child: Image.asset(
              'assets/page-1/images/group-23-bsz.png',
              width: 45 * fem,
              height: 45 * fem,
            ),
          ),
          Positioned(
            // screen Items
            top: 234 * fem,
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  // first row
                  title: Text(
                    "Form",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    med['form'],
                    style: TextStyle(
                      fontSize: 20 * ffem, // Increase font size
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  // second row
                  title: Text(
                    "Duration:",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    "${med['duration']} Days ",
                    style: TextStyle(
                      fontSize: 20 * ffem, // Increase font size
                    ),
                  ),
                  trailing: ElevatedButton(
                    onPressed: _addDay,
                    child: Text(
                      'Add days',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2 * ffem / fem,
                        color: Color(0xfffffefe),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      foregroundColor: Colors.pink[50],
                      backgroundColor: Color.fromARGB(255, 250, 147, 155),
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  // third row
                  title: Text(
                    "Times per Day:",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    med['frequency'],
                    style: TextStyle(
                      fontSize: 20 * ffem, // Increase font size
                    ),
                  ),
                  trailing: ElevatedButton(
                  onPressed: () {
                      Navigator.pushNamed(context, '/ModifyMedecine', arguments: med['id']);
                    },
                    child: Text(
                      'Change',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2 * ffem / fem,
                        color: Color(0xfffffefe),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      foregroundColor: Colors.pink[50],
                      backgroundColor: Color.fromARGB(255, 250, 147, 155),
                    ),
                  ),
                ),
                Divider(),
                SizedBox(height: 20 * fem), // Gives some spacing at the bottom
                Column(
                  // clock image and days left
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // clock picture
                      margin: EdgeInsets.fromLTRB(60 * fem, 0 * fem, 10 * fem, 30 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frameCMA (753:138)
                            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 65.33 * fem, 0 * fem),
                            width: 72.35 * fem,
                            height: 72.34 * fem,
                            child: Image.asset(
                              'assets/page-1/images/frame-Ada.png',
                              width: 50 * fem,
                              height: 50 * fem,
                            ),
                          ),
                          Center(
                            // xdaysleft (753:137)
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0.07 * fem),
                              child: Text(
                                "${med['duration']} Days Left",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 4.2666666667 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 16 * fem),
                ElevatedButton(
                  // delete button
                  onPressed: _deleteMedicine,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero, // Use zero padding if you want the button to fill its parent
                    backgroundColor: Color(0xb7f43d4c), // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20 * fem),
                    ),
                    shadowColor: Color(0x3f000000),
                    elevation: 2 * fem,
                    fixedSize: Size(250 * fem, 50 * fem), // Button size
                  ),
                  child: Text(
                    'Delete',
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
