import 'package:community_app/widgets/family_member_viewbar.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool isBrand = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.count(
          crossAxisCount: 2,
        ),
        FamilyMemberViewbar(
          name: 'Amit Khanolkar',
          isMale: true,
          imgUrl: '',
        ),
        FamilyMemberViewbar(
          name: 'Sheetal Wachkawade',
          isMale: false,
          imgUrl: '',
        ),
      ],
    );
  }
}
