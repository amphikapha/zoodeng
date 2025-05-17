import 'package:flutter/material.dart';

enum Job {
  doctor('หมอ', 'assets/images/pic1.png', Colors.red),
  teacher('ครู', 'assets/images/pic2.jpg', Colors.blue),
  nurse('พยาบาล', 'assets/images/pic3.jpg', Colors.green),
  police('ตำรวจ', 'assets/images/pic4.png', Colors.yellow),
  ;

  const Job(this.title, this.image, this.color);
  final String title;
  final String image;
  final Color color;
}

class Person {
  Person({
    required this.name,
    required this.age,
    required this.job,
  });

  String name;
  int age;
  Job job;
}

List<Person> data = [
  Person(name: 'มาย', age: 30, job: Job.doctor),
  Person(name: 'เซฟ', age: 25, job: Job.teacher),
  Person(name: 'หมูเด้ง', age: 28, job: Job.nurse),
];
