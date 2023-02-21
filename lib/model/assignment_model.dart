// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AssignmentModle {
  String assignmentType;
  String subjectName;
  String dueDate;
  Color boxColor;
  String date;
  String image;
  AssignmentModle(
      {required this.assignmentType,
      required this.subjectName,
      required this.dueDate,
      required this.boxColor,
      required this.date,
      required this.image});
}

final List<AssignmentModle> assignment = [
  AssignmentModle(
    assignmentType: 'Basic of Computer',
    subjectName: 'Computer',
    dueDate: 'Due,30 July,2023, 10:21 AM',
    boxColor: Color(0xffFFB46B),
    date: '10-01-2023',
    image: 'assets/subjects/image1.png',
  ),
  AssignmentModle(
    assignmentType: 'English',
    subjectName: 'English',
    dueDate: 'Due,30 July,2023, 1:21 PM',
    boxColor: Color(0xffFFB46B),
    date: '10-01-2023',
    image: 'assets/subjects/image2.png',
  ),
  AssignmentModle(
    assignmentType: 'Art',
    subjectName: 'Art',
    dueDate: 'Due,30 July,2023, 11:21 AM',
    boxColor: Color(0xffFE696E),
    date: '10-01-2023',
    image: 'assets/subjects/image3.png',
  ),
  AssignmentModle(
    assignmentType: 'Music theory',
    subjectName: 'Music',
    dueDate: 'Due,30 July,2023, 12:21 AM',
    boxColor: Color(0xffAE91FF),
    date: '10-01-2023',
    image: 'assets/subjects/image4.png',
  ),
  AssignmentModle(
    assignmentType: 'History',
    subjectName: 'History',
    dueDate: 'Due,30 July,2023, 11:21 AM',
    boxColor: Color(0xff1D87FC),
    date: '10-01-2023',
    image: 'assets/subjects/image5.png',
  ),
  AssignmentModle(
    assignmentType: 'Solve given sums',
    subjectName: 'Maths',
    dueDate: 'Due,30 July,2023, 10:00 AM',
    boxColor: Color(0xffF874AC),
    date: '10-01-2023',
    image: 'assets/subjects/image6.png',
  ),
  AssignmentModle(
    assignmentType: 'Science paper',
    subjectName: 'Science',
    dueDate: 'Due,30 July,2023, 11:21 AM',
    boxColor: Color(0xffED931E),
    date: '10-01-2023',
    image: 'assets/subjects/image7.png',
  ),
  AssignmentModle(
    assignmentType: 'Geography',
    subjectName: 'Geography',
    dueDate: 'Due,30 July,2023, 8:21 AM',
    boxColor: Color(0xff39C692),
    date: '10-01-2023',
    image: 'assets/subjects/image8.png',
  ),
  AssignmentModle(
    assignmentType: 'Biology',
    subjectName: 'Biology',
    dueDate: 'Due,30 July,2023, 10:21 AM',
    boxColor: Color(0xff4C5B7F),
    date: '10-01-2023',
    image: 'assets/subjects/image9.png',
  ),
];
