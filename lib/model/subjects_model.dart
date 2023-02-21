// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SubjectsModel {
  String subjectName;
  String image;
  Color boxColor;

  SubjectsModel({
    required this.subjectName,
    required this.image,
    required this.boxColor,
  });

  static List<SubjectsModel> getSubjectInfo() {
    List<SubjectsModel> subjects = [];

    subjects.add(
      SubjectsModel(
        subjectName: 'Computer',
        image: 'assets/subjects/image1.png',
        boxColor: Color(0xffFFB46B),
      ),
    );

    subjects.add(
      SubjectsModel(
        subjectName: 'English',
        image: 'assets/subjects/image2.png',
        boxColor: Color(0xff67A4FD),
      ),
    );
    subjects.add(
      SubjectsModel(
        subjectName: 'Art',
        image: 'assets/subjects/image3.png',
        boxColor: Color(0xffFE696E),
      ),
    );

    subjects.add(
      SubjectsModel(
        subjectName: 'Music',
        image: 'assets/subjects/image4.png',
        boxColor: Color(0xffAE91FF),
      ),
    );
    subjects.add(
      SubjectsModel(
        subjectName: 'History',
        image: 'assets/subjects/image5.png',
        boxColor: Color(0xff1D87FC),
      ),
    );
    subjects.add(
      SubjectsModel(
        subjectName: 'Maths',
        image: 'assets/subjects/image6.png',
        boxColor: Color(0xffF874AC),
      ),
    );
    subjects.add(
      SubjectsModel(
        subjectName: 'Science',
        image: 'assets/subjects/image7.png',
        boxColor: Color(0xffED931E),
      ),
    );
    subjects.add(
      SubjectsModel(
        subjectName: 'Geography',
        image: 'assets/subjects/image8.png',
        boxColor: Color(0xff39C692),
      ),
    );
    subjects.add(
      SubjectsModel(
        subjectName: 'Biology',
        image: 'assets/subjects/image9.png',
        boxColor: Color(0xff4C5B7F),
      ),
    );

    return subjects;
  }
}
