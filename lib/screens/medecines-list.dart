import 'package:flutter/material.dart';
import 'package:dawini/databases/db.dart';
import '../medecine.dart';
class MedecinesList extends StatefulWidget {
  final Medecine medecine;
  MedecinesList({required this.medecine});

  @override
  State<MedecinesList> createState() => _MedecinesListState();
}

class _MedecinesListState extends State<MedecinesList> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
        appBar: AppBar(
              leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pushReplacementNamed(context, '/home-page'),
        ),
          title: const Text(
          'List of Medicines',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xfffff2ff),
        iconTheme: const IconThemeData(color: Color(0xfff43d4c)),
      ),
      body: Stack(
        children: [
          Container(           //pink background
            color: Color(0xfffff2ff),
          ),
          Positioned(         // White rounded rectangle
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
          Positioned(          // 'List of Medicines' text
            left: 35 * fem,
            top: 147 * fem,
            child: Text(
              'List of Medicines',
              style: TextStyle(
                fontSize: 24 * ffem,
                fontWeight: FontWeight.w700,
                color: Color(0xff34134e),
              ),
            ),
          ),
          Positioned(          // list circle background
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
          Positioned(          // list image
            left: 53 * fem,
            top: 77 * fem,
            child: Image.asset(
              'assets/page-1/images/add-list-UPv.png',
              width: 45 * fem,
              height: 45 * fem,
            ),
          ),
          Positioned(   //list 
            top: 234 * fem,
            left: 0,
            right: 0,
            bottom: 0,
            child: FutureBuilder<List<Map<String, dynamic>>>(
              future: MedicineDB.getAllMedicines(), // Fetch all medicines from the database
              builder: (BuildContext context, AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (snapshot.hasData) {
                  List<Map<String, dynamic>> medicines = snapshot.data!; // Assign the data to 'medicines'
                  if (medicines.isEmpty) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.of(context).pushReplacementNamed('/empty-medecines-list');
                    });
                  }
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: medicines.length, 
                    itemBuilder: (context, index) {
                      var med = medicines[index]; 
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/medecine-info', arguments: index);
                        },
                        child: Card(
                          margin: EdgeInsets.fromLTRB(8 * fem, 6 * fem, 14 * fem, 7 * fem),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15 * fem),
                          ),
                          color: Color.fromARGB(255, 255, 250, 255),
                          child: Padding(
                            padding: EdgeInsets.all(8 * fem),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(6 * fem),
                                  child: Image.asset(
                                    'assets/page-1/images/vector-Jha.png',
                                    width: 60 * fem,
                                    height: 60 * fem,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        med['name'], // Accessing directly from the map
                                        style: TextStyle(
                                          fontSize: 20 * ffem,
                                          color: Color(0xfffb5361),
                                        ),
                                      ),
                                      SizedBox(height: 4 * fem),
                                      Text(
                                        'Frequency: ${med['frequency']} \nTime: ${med['time']}', // Accessing directly from the map
                                        style: TextStyle(
                                          fontSize: 16 * ffem,
                                          color: Color(0xff35134f),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                /*Text(
                                  "${DateTime.parse(med['endDate']).difference(DateTime.now()).inDays} Days Left",
                                  style: TextStyle(
                                    fontSize: 16 * ffem,
                                    color: Color(0xff999999),
                                  ),
                                ),*/
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
