class ColorModel {
  String assetPath;
  String text;
  String nextAssetPath;
  ColorModel({
    this.assetPath,
    this.text,
    this.nextAssetPath,
  });
}

List<ColorModel> colorItems = <ColorModel>[
  ColorModel(
    assetPath: 'assets/colors/color_1.png',
    text: 'Black',
    nextAssetPath: 'assets/color_details/color__black.png',
  ),
  ColorModel(
    assetPath: 'assets/colors/color_2.png',
    text: 'Blue',
    nextAssetPath: 'assets/color_details/color__blue.png',
  ),
  ColorModel(
    assetPath: 'assets/colors/color_3.png',
    text: 'Brown',
    nextAssetPath: 'assets/color_details/color__brown.png',
  ),
  ColorModel(
    assetPath: 'assets/colors/color_4.png',
    text: 'Grey',
    nextAssetPath: 'assets/color_details/color__gray.png',
  ),
  ColorModel(
    assetPath: 'assets/colors/color_5.png',
    text: 'Green',
    nextAssetPath: 'assets/color_details/color__green.png',
  ),
  ColorModel(
    assetPath: 'assets/colors/color_6.png',
    text: 'Maroon',
    nextAssetPath: 'assets/color_details/color__maroon.png',
  ),
  ColorModel(
    assetPath: 'assets/colors/color_7.png',
    text: 'Orange',
    nextAssetPath: 'assets/color_details/color__orange.png',
  ),
  ColorModel(
    assetPath: 'assets/colors/color_8.png',
    text: 'Pink',
    nextAssetPath: 'assets/color_details/color__pink.png',
  ),
  ColorModel(
    assetPath: 'assets/colors/color_9.png',
    text: 'Purple',
    nextAssetPath: 'assets/color_details/color__purple.png',
  ),
  ColorModel(
    assetPath: 'assets/colors/color_10.png',
    text: 'Red',
    nextAssetPath: 'assets/color_details/color__red.png',
  ),
];
