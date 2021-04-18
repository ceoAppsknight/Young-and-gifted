import 'package:flutter/material.dart';

import '../data/alphabet_model.dart';
import '../data/animal_detail.dart';
import '../data/bird_model.dart';
import '../data/color_model.dart';
import '../data/flower_model.dart';
import '../data/fruit_model.dart';
import '../data/month_model.dart';
import '../data/number_model.dart';
import '../data/shape_model.dart';
import '../data/vegetable_model.dart';
import 'detail.dart';

class HomePage extends StatefulWidget {
  final String id;

  const HomePage({this.id});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list;
  @override
  void initState() {
    if (widget.id == 'Alphabets') {
      list = alphabetsItems;
    } else if (widget.id == 'Numbers') {
      list = numberItems;
    } else if (widget.id == 'Shapes') {
      list = shapeItems;
    } else if (widget.id == 'Colors') {
      list = colorItems;
    } else if (widget.id == 'Animals') {
      list = animalItems;
    } else if (widget.id == 'Months') {
      list = monthItems;
    } else if (widget.id == 'Flowers') {
      list = flowerItems;
    } else if (widget.id == 'Fruits') {
      list = fruitItems;
    } else if (widget.id == 'Birds') {
      list = birdItems;
    } else if (widget.id == 'Vegetables') {
      list = vegetableItems;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/dashboard/dash_board_background.png',
            ),
          ),
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
          ),
          itemCount: list.length,
          itemBuilder: (context, index) => GridTile(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => DetailPage(
                      assetPath: list[index].nextAssetPath,
                      text: list[index].text,
                    ),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Colors.blue[300],
                        Colors.red[300],
                      ],
                    ),
                  ),
                  child: Center(
                    child: Image(
                      image: AssetImage(
                        list[index].assetPath,
                      ),
                    ),
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
