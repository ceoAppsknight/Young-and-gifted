import 'package:flutter/material.dart';
import 'pages/dashboard.dart';

void main() => runApp(YoungAndGiftedApp());

class YoungAndGiftedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
