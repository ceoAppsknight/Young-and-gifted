class DashboardModel {
  String assetPath;
  String id;
  String name;
  String bgPath;
  DashboardModel({
    this.assetPath,
    this.id,
    this.name,
    this.bgPath,
  });
}

List<DashboardModel> dashboardItems = <DashboardModel>[
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_abc.png',
    id: 'Alphabets',
    name: 'Alphabets',
    bgPath: 'assets/bg/abc.png',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_numbers.png',
    id: 'Numbers',
    name: 'Numbers',
    bgPath: 'assets/bg/123.png',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_shapes.png',
    id: 'Shapes',
    name: 'Shapes',
    bgPath: 'assets/bg/shape.png',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_colors.png',
    id: 'Colors',
    name: 'Colors',
    bgPath: 'assets/bg/color.png',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_animals.png',
    id: 'Animals',
    name: 'Animals',
    bgPath: 'assets/bg/animal.png',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_birds.png',
    id: 'Birds',
    name: 'Birds',
    bgPath: 'assets/bg/bird.png',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_fruits.png',
    id: 'Fruits',
    name: 'Fruits',
    bgPath: 'assets/bg/fruit.png',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_vegetables.png',
    id: 'Vegetables',
    name: 'Vegetables',
    bgPath: 'assets/bg/vegetable.png',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_flowers.png',
    id: 'Flowers',
    name: 'Flowers',
    bgPath: 'assets/bg/flower.png',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_months.png',
    id: 'Months',
    name: 'Months',
    bgPath: 'assets/bg/month.png',
  ),
];
