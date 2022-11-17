import 'dart:async';
import 'package:flutter/material.dart';

import 'products_overview_screen.dart';

class SplashsScreen extends StatefulWidget {
  static const routeName = '/splash-screen';

  @override
  State<SplashsScreen> createState() => _SplashsScreenState();
}

class _SplashsScreenState extends State<SplashsScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 6),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ProductOverviewScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: Center(
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Domain Shop',
              style: TextStyle(
                fontSize: 35,
                color: Colors.pink,
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 50,
              ),
              child: Image.asset(
                'assets/images/happy-man.png',
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
