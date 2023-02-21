// ignore_for_file: public_member_api_docs, sort_constructors_first
class SliderInfoModel {
  String date;
  String imge;
  SliderInfoModel({
    required this.date,
    required this.imge,
  });

  static List<SliderInfoModel> getInfo() {
    List<SliderInfoModel> sliderInfo = [];

    sliderInfo.add(
      SliderInfoModel(
          date: '02,February,2023', imge: 'assets/study/image1.png'),
    );

    sliderInfo.add(
      SliderInfoModel(date: '04,April,2023', imge: 'assets/study/image2.png'),
    );

    sliderInfo.add(
      SliderInfoModel(date: '08,April,2023', imge: 'assets/study/image3.png'),
    );
     sliderInfo.add(
      SliderInfoModel(date: '08,April,2023', imge: 'assets/study/image3.png'),
    );

    return sliderInfo;
  }
}
