import 'package:dawini/utils.dart';
import 'package:flutter/material.dart';
import 'package:dawini/localnotification.dart';
import '../medecine.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Medecine medecine =
      Medecine(name: '', form: '', frequency: '', time: '', dosage: 0);
  final notificationService = NotificationService();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Container(
        // homepageAig (1:3)
        width: double.infinity,
        height: 800 * fem,
        decoration: const BoxDecoration(
          color: Color(0xfffff2ff),
        ),
        child: Container(
          // group27rE8 (1:4)
          padding:
              EdgeInsets.fromLTRB(45 * fem, 138 * fem, 33 * fem, 143 * fem),
          width: double.infinity,
          height: 807 * fem,
          decoration: const BoxDecoration(
            color: Color(0xfffff2ff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // weclometodawini7vk (1:16)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 21 * fem, 81 * fem),
                child: Text(
                  'Weclome to DAWINI',
                  style: SafeGoogleFont(
                    'Scada',
                    fontSize: 24 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.245 * ffem / fem,
                    color: Color(0xff414141),
                  ),
                ),
              ),
              Container(
                // autogroupn7wcNbn (APxqUhxg6Wb6rCjotEN7WC)
                margin:
                    EdgeInsets.fromLTRB(84 * fem, 0 * fem, 96 * fem, 16 * fem),
                padding:
                    EdgeInsets.fromLTRB(18 * fem, 23 * fem, 18 * fem, 22 * fem),
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/page-1/images/ellipse-1.png',
                    ),
                  ),
                ),
                child: Center(
                  // group20fKz (1:8)
                  child: SizedBox(
                    width: 66 * fem,
                    height: 50 * fem,
                    child: Image.asset(
                      'assets/page-1/images/group-20.png',
                      width: 66 * fem,
                      height: 50 * fem,
                    ),
                  ),
                ),
              ),
              Container(
                // dawinidRE (1:13)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 12 * fem, 31 * fem),
                child: Text(
                  'Dawini',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Sarabun',
                    fontSize: 34 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.3 * ffem / fem,
                    color: Color(0xfff43d4c),
                  ),
                ),
              ),
              Container(
                // nevermissamedagainv9S (1:12)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
                child: Text(
                  'Never miss a Med Again',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Scada',
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.245 * ffem / fem,
                    color: Color(0xff414141),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/add-name',
                      arguments: medecine);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  backgroundColor: Color(0xfffefefe),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20 * fem),
                  ),
                  shadowColor: Color(0x3f000000),
                  elevation: 2 * fem,
                ),
                child: Text(
                  'Add new Med',
                  style: SafeGoogleFont(
                    'Scada',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.245 * ffem / fem,
                    color: Color(0xfff43d4c),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, '/medicines-list');
                    NotificationService().scheduleNotification(
                      id: 1,
                      title: "Scheduled Notification",
                      body: "This is a scheduled notification.",
                      scheduledNotificationDateTime: DateTime.now().add(
                        Duration(seconds: 7)),
                    );
                  });
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  backgroundColor: Color(0xfffefefe),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20 * fem),
                  ),
                  shadowColor: Color(0x3f000000),
                  elevation: 2 * fem,
                ),
                child: Text(
                  'Med List',
                  style: SafeGoogleFont(
                    'Scada',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.245 * ffem / fem,
                    color: Color(0xfff43d4c),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
