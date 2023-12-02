import 'package:dawini/utils.dart';
import 'package:flutter/material.dart';
import 'package:dawini/screens/home-page.dart';
import 'package:dawini/screens/add-form.dart';
import 'package:dawini/screens/add-frequency.dart';
import 'package:dawini/screens/add-name-.dart';
import 'package:dawini/screens/add-schedule.dart';
import 'package:dawini/screens/add-time.dart';
import 'package:dawini/screens/medecines-list.dart';
import 'package:dawini/screens/empty-medecines-list.dart';
import 'package:dawini/screens/medecine-info.dart';
import 'package:dawini/screens/notification.dart';
import 'package:dawini/screens/specify-schedule.dart';
import 'medecine.dart';

void main() => runApp(const Dawini());

class Dawini extends StatelessWidget {
  const Dawini({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home-page',
      routes: {
        '/add-form': (context) => AddForm(medecine: Medecine()),
        '/add-frequency': (context) => AddFrequency(medecine: Medecine()),
        '/add-name': (context) => AddName(medecine: Medecine()),
        '/add-schedule': (context) => AddSchedule(),
        '/add-time': (context) => AddTime(),
        '/empty-medecines-list': (context) => EmptyMedecinesList(),
        '/home-page': (context) => HomePage(),
        '/medecine-info':(context) => MedecineInfo(),
        '/medecines-list': (context) => MedecinesList(),
        '/notification': (context) => Notifications(),
        '/specify-schedule': (context) => SpecifySchedule(),
      },
    );
  }
}
