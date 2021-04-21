import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:young_and_gifter/helper/ad_helper.dart';

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
  InterstitialAd myInterstitial;
  bool adLoaded = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

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
    myInterstitial = InterstitialAd(
      adUnitId: AdHelper.interstitialAdUnitId,
      request: AdRequest(),
      listener: AdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (Ad ad) {
          print('Ad loaded.');
          setState(() {
            adLoaded = true;
          });
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('Ad failed to load: $error');
        },
        // Called when an ad opens an overlay that covers the screen.
        onAdOpened: (Ad ad) => print('Ad opened.'),
        // Called when an ad removes an overlay that covers the screen.
        onAdClosed: (Ad ad) => print('Ad closed.'),
        // Called when an ad is in the process of leaving the application.
        onApplicationExit: (Ad ad) => print('Left applica tion.'),
      ),
    );
    loadAD();
  }

  Future<void> loadAD() async {
    await myInterstitial.load();
    if (adLoaded) await myInterstitial.show();
  }

  Future<void> speak() async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1.0);
    await flutterTts.speak(widget.text);
  }

  @override
  Widget build(BuildContext context) {
    return (adLoaded)
        ? myInterstitial.show().then((value) => setState(() {
              adLoaded = false;
            }))
        : Container(
            height: double.maxFinite,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/bg/detail.png',
                ),
              ),
            ),
            alignment: Alignment.center,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                leading: CircleAvatar(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios_outlined),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                elevation: 0.0,
                backgroundColor: Colors.transparent,
              ),
              body: Center(
                child: Image(
                  alignment: Alignment.center,
                  image: AssetImage(widget.assetPath),
                  width:
                      MediaQuery.of(context).size.width * 0.7 * animation.value,
                  height: MediaQuery.of(context).size.height *
                      0.7 *
                      animation.value,
                ),
              ),
            ),
          );
  }

  @override
  void dispose() {
    controller.dispose();
    myInterstitial.dispose();
    super.dispose();
  }
}
