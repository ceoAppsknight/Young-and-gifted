class FlowerModel {
  String assetPath;
  String text;
  String nextAssetPath;
  FlowerModel({
    this.assetPath,
    this.text,
    this.nextAssetPath,
  });
}

List<FlowerModel> flowerItems = <FlowerModel>[
  FlowerModel(
    assetPath: 'assets/flowers/chamomile.png',
    text: 'chamomile',
    nextAssetPath: 'assets/flowers_detail/chamomile.png',
  ),
  FlowerModel(
    assetPath: 'assets/flowers/chrysanthemum.png',
    text: 'chrysanthemum',
    nextAssetPath: 'assets/flowers_detail/chrysanthemum.png',
  ),
  FlowerModel(
    assetPath: 'assets/flowers/dahila.png',
    text: 'dahila',
    nextAssetPath: 'assets/flowers_detail/dahila.png',
  ),
  FlowerModel(
    assetPath: 'assets/flowers/flor.png',
    text: 'flor',
    nextAssetPath: 'assets/flowers_detail/flor.png',
  ),
  FlowerModel(
    assetPath: 'assets/flowers/flora.png',
    text: 'flora',
    nextAssetPath: 'assets/flowers_detail/flora.png',
  ),
  FlowerModel(
    assetPath: 'assets/flowers/geranium.png',
    text: 'geranium',
    nextAssetPath: 'assets/flowers_detail/geranium.png',
  ),
  FlowerModel(
    assetPath: 'assets/flowers/lily.png',
    text: 'lily',
    nextAssetPath: 'assets/flowers_detail/lily.png',
  ),
  FlowerModel(
    assetPath: 'assets/flowers/lotus.png',
    text: 'lotus',
    nextAssetPath: 'assets/flowers_detail/lotus.png',
  ),
  FlowerModel(
    assetPath: 'assets/flowers/reslight.png',
    text: 'reslight',
    nextAssetPath: 'assets/flowers_detail/reslight.png',
  ),
  FlowerModel(
    assetPath: 'assets/flowers/rose.png',
    text: 'rose',
    nextAssetPath: 'assets/flowers_detail/rose.png',
  ),
  FlowerModel(
    assetPath: 'assets/flowers/sunflower.png',
    text: 'sunflower',
    nextAssetPath: 'assets/flowers_detail/sunflower.png',
  ),
];
