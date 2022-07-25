import 'package:covid_19/theme.dart';
import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({
    Key? key,
    required this.num,
    required this.color,
    required this.title,
  }) : super(key: key);

  final int num;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(7),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: color.withOpacity(0.10)),
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(color: color, width: 2)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text("$num", style: TextStyle(fontSize: 30, color: color)),
        Text(title, style: kSubTextStyle.copyWith(fontSize: 15))
      ],
    );
  }
}
