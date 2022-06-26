import 'package:flutter/material.dart';

class FamilyMemberViewbar extends StatelessWidget {
  final String name;
  final bool isMale;
  final String imgUrl;

  const FamilyMemberViewbar({
    Key? key,
    required this.name,
    required this.imgUrl,
    required this.isMale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      label: Text(name),
      icon: Image.network(imgUrl),
      style: isMale == true
          ? ElevatedButton.styleFrom(
              primary: Colors.teal,
              onPrimary: Colors.white,
              side: BorderSide(color: Colors.blue, width: 5),
            )
          : ElevatedButton.styleFrom(
              primary: Colors.teal,
              onPrimary: Colors.white,
              side: BorderSide(color: Colors.pink, width: 5),
            ),
      onPressed: () {
        print('Pressed');
      },
    );
  }
}
