import 'package:flutter/material.dart';
import '../medecine.dart'; 

class MedecinesList extends StatelessWidget {
  final Medecine medecine;
  MedecinesList({required this.medecine});
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
          Positioned(          // List of medicines 
            top: 234 * fem,
            left: 0,
            right: 0,
            bottom: 0,
            child:ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: medecineList.length,
              itemBuilder: (context, index) {
                Medecine med = medecineList[index];
                return GestureDetector(
                  onTap: () {Navigator.pushNamed(context,'/medecine-info',arguments: index, );
                  },// passing the name of the medicine
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
                                  med.name,
                                  style: TextStyle(
                                    fontSize: 20 * ffem,
                                    color: Color(0xfffb5361),
                                  ),
                                ),
                                SizedBox(height: 4 * fem),
                                Text(
                                  '${med.frequency} \n${med.time}',
                                  style: TextStyle(
                                    fontSize: 16 * ffem,
                                    color: Color(0xff35134f),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                           "${med.getDaysLeft()} Days Left",
                            style: TextStyle(
                              fontSize: 16 * ffem,
                              color: Color(0xff999999),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          ),
        ],
      ),
    );
  }
}
