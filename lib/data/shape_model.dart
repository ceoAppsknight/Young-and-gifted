class ShapeModel {
  String assetPath;
  String text;
  String nextAssetPath;
  ShapeModel({
    this.assetPath,
    this.text,
    this.nextAssetPath,
  });
}

List<ShapeModel> shapeItems = <ShapeModel>[
  ShapeModel(
    assetPath: 'assets/shapes/1.png',
    text: 'cone',
    nextAssetPath: 'assets/shape_detail/shape_cone.png',
  ),
  ShapeModel(
    assetPath: 'assets/shapes/2.png',
    text: 'cylinder',
    nextAssetPath: 'assets/shape_detail/shape_cylinder.png',
  ),
  ShapeModel(
    assetPath: 'assets/shapes/3.png',
    text: 'cube',
    nextAssetPath: 'assets/shape_detail/shape_cube.png',
  ),
  ShapeModel(
    assetPath: 'assets/shapes/4.png',
    text: 'pyramid',
    nextAssetPath: 'assets/shape_detail/shape_pyramid.png',
  ),
  ShapeModel(
    assetPath: 'assets/shapes/5.png',
    text: 'sphere',
    nextAssetPath: 'assets/shape_detail/shape_sphere.png',
  ),
  ShapeModel(
    assetPath: 'assets/shapes/6.png',
    text: 'rectangle',
    nextAssetPath: 'assets/shape_detail/shape_rectangle.png',
  ),
  ShapeModel(
    assetPath: 'assets/shapes/7.png',
    text: 'square',
    nextAssetPath: 'assets/shape_detail/shape_square.png',
  ),
  ShapeModel(
    assetPath: 'assets/shapes/8.png',
    text: 'triangle',
    nextAssetPath: 'assets/shape_detail/shape_triangle.png',
  ),
  ShapeModel(
    assetPath: 'assets/shapes/9.png',
    text: 'circle',
    nextAssetPath: 'assets/shape_detail/shape_circle.png',
  ),
  ShapeModel(
    assetPath: 'assets/shapes/10.png',
    text: 'oval',
    nextAssetPath: 'assets/shape_detail/shape_oval.png',
  ),
];
