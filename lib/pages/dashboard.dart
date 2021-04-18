import 'package:flutter/material.dart';

import '../data/dashboard_models.dart';
import 'home.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Young and Gifted'),
        elevation: 0.0,
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.add_circle_outline,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.music_note,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        height: double.maxFinite,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/bg/dash_board_background.png',
            ),
          ),
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
          ),
          itemCount: dashboardItems.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => HomePage(
                    id: dashboardItems[index].id,
                    bgPath: dashboardItems[index].bgPath,
                  ),
                ),
              );
            },
            child: GridTile(
              child: Container(
                child: Image(
                  image: AssetImage(
                    dashboardItems[index].assetPath,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
