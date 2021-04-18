class DashboardModel {
  String assetPath;
  String id;
  String name;
  DashboardModel({
    this.assetPath,
    this.id,
    this.name,
  });
}

List<DashboardModel> dashboardItems = <DashboardModel>[
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_abc.png',
    id: 'Alphabets',
    name: 'Alphabets',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_numbers.png',
    id: 'Numbers',
    name: 'Numbers',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_shapes.png',
    id: 'Shapes',
    name: 'Shapes',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_colors.png',
    id: 'Colors',
    name: 'Colors',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_animals.png',
    id: 'Animals',
    name: 'Animals',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_birds.png',
    id: 'Birds',
    name: 'Birds',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_fruits.png',
    id: 'Fruits',
    name: 'Fruits',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_vegetables.png',
    id: 'Vegetables',
    name: 'Vegetables',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_flowers.png',
    id: 'Flowers',
    name: 'Flowers',
  ),
  DashboardModel(
    assetPath: 'assets/dashboard/dash_board_months.png',
    id: 'Months',
    name: 'Months',
  ),
];
