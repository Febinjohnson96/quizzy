import 'package:quizzy/gen/assets.gen.dart';

class SubjectModel {
  final String? name;
  final String? image;

  SubjectModel({this.name, this.image});
}


List<SubjectModel> subjects = [
  SubjectModel(name: 'Physics', image: Assets.svg.physics),
  SubjectModel(name: 'Chemistry', image: Assets.svg.chemistry),
  SubjectModel(name: 'Biology', image: Assets.svg.biology),
];