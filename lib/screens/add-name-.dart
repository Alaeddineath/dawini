import 'package:flutter/material.dart';
import '../medecine.dart';

class AddName extends StatefulWidget {
  final Medecine medecine;

  AddName({required this.medecine});

  @override
  _AddNameState createState() => _AddNameState();
}

class _AddNameState extends State<AddName> {
  late TextEditingController nameController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' Add a new medecine',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xfffff2ff),
        iconTheme: const IconThemeData(color: Color(0xfff43d4c)),
      ),
      body: Container(
        width: double.infinity,
        child: Container(
          // addnameXnk (11:4)
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xfffff2ff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupk6ngUT6 (H8xuGh1CdZ8t2miEUBk6nG)
                padding: EdgeInsets.fromLTRB(
                    25.69 * fem, 0 * fem, 0 * fem, 11 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogrouphhwjQLk (H8xtdnu1vGbUBsxCW9HHwJ)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 8 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogroupkcigWeg (H8xtkxMkKjWBDPFFtwKcig)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 20 * fem, 200 * fem, 0 * fem),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      9.31 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  padding: EdgeInsets.fromLTRB(
                                      16 * fem, 16 * fem, 17 * fem, 17 * fem),
                                  decoration: BoxDecoration(
                                    color: Color(0xafffe6ff),
                                    borderRadius:
                                        BorderRadius.circular(39 * fem),
                                  ),
                                  child: Center(
                                    // group232Fe (11:11)
                                    child: SizedBox(
                                      width: 45 * fem,
                                      height: 45 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-23.png',
                                        width: 45 * fem,
                                        height: 45 * fem,
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
                    Container(
                      // whatmedwouldyouliketoaddG9z (11:7)
                      margin: EdgeInsets.fromLTRB(
                          9.31 * fem, 0 * fem, 0 * fem, 0 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 283 * fem,
                      ),
                      child: Text(
                        'What Med would you like to add?',
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
              //bigest container
              Container(
                // autogroupw56uhm6 (H8xtzcderzQ8X6GmJAw56U)
                padding:
                    EdgeInsets.fromLTRB(36 * fem, 99 * fem, 36 * fem, 70 * fem),
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
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(labelText: 'enter the name'),
                    ),
                    SizedBox(height: 20),
                    Container(
                      // typethenameofthemedXEL (11:17)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 39 * fem, 200 * fem),
                      child: Text(
                        'type the name of the Med ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.245 * ffem / fem,
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
                          widget.medecine.name = nameController.text;
                          Navigator.pushNamed(context, '/add-form', arguments: widget.medecine);
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
