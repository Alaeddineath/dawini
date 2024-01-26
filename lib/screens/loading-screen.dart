import 'package:flutter/material.dart';
import 'package:dawini/utils.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/home-page');
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/page-1/images/auto-group-1ma4.png'),
            const SizedBox(height: 24),
            Text(
              'Dawini',
              textAlign: TextAlign.center,
              style: SafeGoogleFont(
                'Sarabun',
                fontSize: 34,
                fontWeight: FontWeight.w400,
                color: Color(0xfff43d4c),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Don't miss a medicine again",
              textAlign: TextAlign.center,
              style: SafeGoogleFont(
                'Sarabun',
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
