import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_umit_app/core/constants/icon_names.dart';
import 'package:flutter_umit_app/core/constants/styles/app_colors.dart';
import 'package:flutter_umit_app/features/lesson/models/lesson.dart';
import 'package:flutter_umit_app/features/lesson/views/lessons.dart';

class AdvancedClassListWidget extends StatefulWidget {
  final List<Lesson> basicadvancedLessons;
  final List<Lesson> appliedadvancedLessons;

  AdvancedClassListWidget({
    super.key,
    required this.basicadvancedLessons,
    required this.appliedadvancedLessons,
  });

  @override
  State<AdvancedClassListWidget> createState() =>
      _AdvancedClassListWidgetState();
}

class _AdvancedClassListWidgetState extends State<AdvancedClassListWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15),
        color: AppColors.secondary,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4, bottom: 4),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Advanced基礎講座',
                      style: TextStyle(color: Colors.white))),
            ),
            ListView.separated(
              shrinkWrap: true, //追加
              physics: const NeverScrollableScrollPhysics(), //追加
              itemCount: myAdvancedbasicLessons.length,
              itemBuilder: (BuildContext context, int index) {
                Lesson currentLesson = myAdvancedbasicLessons[index];
                return _buildAdvancedContent(currentLesson);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(color: Colors.transparent),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 4, bottom: 4),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Advanced応用講座',
                      style: TextStyle(color: Colors.white))),
            ),
            ListView.separated(
              shrinkWrap: true, //追加
              physics: const NeverScrollableScrollPhysics(), //追加
              itemCount: myAdvancedappliedLessons.length,
              itemBuilder: (BuildContext context, int index) {
                Lesson currentLesson = myAdvancedappliedLessons[index];
                return _buildAdvancedContent(currentLesson);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(color: Colors.transparent),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildAdvancedContent(Lesson lesson) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(5)),
    padding: EdgeInsets.all(5),
    child: ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(lesson.picPath),
      ),
      title: Text(
        lesson.title,
        style: TextStyle(
            color: AppColors.complementary, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        lesson.subTitle,
        style: TextStyle(color: Colors.black),
      ),
      trailing: SvgPicture.asset(
        lesson.isFavorited ? IconNames.fa01 : IconNames.fa02,
        width: iconSize,
        height: iconSize,
        colorFilter: ColorFilter.mode(AppColors.complementary, BlendMode.srcIn),
      ),
    ),
  );
}

Lesson myadvancedBasicLesson = Lesson(
    title: 'Advanced基礎講座第1回',
    subTitle: '~変数とデータ型~',
    section: 'Advanced基礎講座',
    hasVideo: false,
    isFavorited: true,
    picPath: 'assets/images/teacher02.png',
    videoUrl: '',
    description: '',
    memo: '');

Lesson myadvancedBasicLesson2 = Lesson(
    title: 'Advanced基礎講座第2回',
    subTitle: '~変数とデータ型~',
    section: 'Advanced基礎講座',
    hasVideo: false,
    isFavorited: false,
    picPath: 'assets/images/teacher02.png',
    videoUrl: '',
    description: '',
    memo: '');

Lesson myadvancedBasicLesson3 = Lesson(
    title: 'Advanced基礎講座第3回',
    subTitle: '~変数とデータ型~',
    section: 'Advanced基礎講座',
    hasVideo: false,
    isFavorited: false,
    picPath: 'assets/images/teacher03.png',
    videoUrl: '',
    description: '',
    memo: '');

Lesson myadvancedBasicLesson4 = Lesson(
    title: 'Advanced基礎講座第4回',
    subTitle: '~変数とデータ型~',
    section: 'Advanced基礎講座',
    hasVideo: false,
    isFavorited: false,
    picPath: 'assets/images/teacher01.png',
    videoUrl: '',
    description: '',
    memo: '');

Lesson myAdvancedAppliedLesson = Lesson(
    title: 'Advanced応用講座第1回',
    subTitle: '~変数とデータ型~',
    section: 'Advanced応用講座',
    hasVideo: false,
    isFavorited: false,
    picPath: 'assets/images/teacher02.png',
    videoUrl: '',
    description: '',
    memo: '');

Lesson myAdvancedAppliedLesson2 = Lesson(
    title: 'Advanced応用講座第2回',
    subTitle: '~変数とデータ型~',
    section: 'Advanced応用講座',
    hasVideo: false,
    isFavorited: false,
    picPath: 'assets/images/teacher03.png',
    videoUrl: '',
    description: '',
    memo: '');

Lesson myAdvancedAppliedLesson3 = Lesson(
    title: 'Advanced応用講座第3回',
    subTitle: '~変数とデータ型~',
    section: 'Advanced応用講座',
    hasVideo: false,
    isFavorited: false,
    picPath: 'assets/images/teacher01.png',
    videoUrl: '',
    description: '',
    memo: '');

Lesson myAdvancedAppliedLesson4 = Lesson(
    title: 'Advanced応用講座第4回',
    subTitle: '~変数とデータ型~',
    section: 'Advanced応用講座',
    hasVideo: false,
    isFavorited: false,
    picPath: 'assets/images/teacher01.png',
    videoUrl: '',
    description: '',
    memo: '');

List<Lesson> myAdvancedbasicLessons = [
  myadvancedBasicLesson,
  myadvancedBasicLesson2,
  myadvancedBasicLesson3,
  myadvancedBasicLesson4
];

List<Lesson> myAdvancedappliedLessons = [
  myAdvancedAppliedLesson,
  myAdvancedAppliedLesson2,
  myAdvancedAppliedLesson3,
  myAdvancedAppliedLesson4
];
