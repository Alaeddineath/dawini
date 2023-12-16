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
import 'package:dawini/screens/modify-medecine.dart';
import 'medecine.dart'; // THIS IS GOTTA GET DELETED LATER

void main() => runApp(const Dawini());

class Dawini extends StatelessWidget {
  const Dawini({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(), // Ensure this class is defined
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home-page',
      routes: {
        '/add-form': (context) => AddForm(medecine: Medecine()),
        '/add-frequency': (context) => AddFrequency(medecine: Medecine()),
        '/add-name': (context) => AddName(medecine: Medecine()),
        '/add-schedule': (context) => AddSchedule(medecine: Medecine()),
        '/add-time': (context) => AddTime(medecine: Medecine()),
        '/empty-medecines-list': (context) => EmptyMedecinesList(),
        '/home-page': (context) => HomePage(),
        '/medicines-list': (context) => MedecinesList(medecine: Medecine()),
        // Removed '/medecine-info' from static routes as it's handled dynamically
      },
      onGenerateRoute: (RouteSettings settings) {
        // Handle dynamic routes
        if (settings.name == '/medecine-info') {
          final args = settings.arguments;
          if (args is int) {
            return MaterialPageRoute(
              builder: (context) => MedecineInfo(index: args),
            );
          } 
        } else if (settings.name == '/ModifyMedecine') {
          final args = settings.arguments;
          if (args is int?) { // Allowing for null as well
            return MaterialPageRoute(
              builder: (context) => ModifyMedecine(id: args),
            );
          }
        }
        // Return null for any other routes not defined here
        // The system will use the `routes` table for static routes
        return null;
      },
    );
  }
}
