// ignore_for_file: public_member_api_docs, sort_constructors_first
class MenuModel {
  String image;
  String titel;
  MenuModel({
    required this.image,
    required this.titel,
  });
}

List<MenuModel> menuItems = [
  MenuModel(image: 'assets/menu_icons/image1.png', titel: 'Attendance'),
  MenuModel(image: 'assets/menu_icons/image2.png', titel: 'Timetable'),
  MenuModel(image: 'assets/menu_icons/image3.png', titel: 'Notice Borad'),
  MenuModel(image: 'assets/menu_icons/image4.png', titel: 'Parent Profile'),
  MenuModel(image: 'assets/menu_icons/image5.png', titel: 'Holidays'),
  MenuModel(image: 'assets/menu_icons/image6.png', titel: 'Settings'),
];


