import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class DetailPage extends StatefulWidget {
  final String assetPath;
  final String text;

  const DetailPage({
    this.assetPath,
    this.text,
  });

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  FlutterTts flutterTts;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0.6, end: 1).animate(
      controller,
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    controller.forward();
    flutterTts = FlutterTts();
    speak();
  }

  Future<void> speak() async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1.0);
    await flutterTts.speak(widget.text);
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
        alignment: Alignment.center,
        child: Image(
          image: AssetImage(widget.assetPath),
          width: MediaQuery.of(context).size.width * 0.7 * animation.value,
          height: MediaQuery.of(context).size.height * 0.7 * animation.value,
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
