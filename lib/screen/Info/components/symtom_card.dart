import 'package:covid_19/theme.dart';
import 'package:flutter/material.dart';

class SymtomCard extends StatelessWidget {
  const SymtomCard(
      {Key? key,
      required this.image,
      required this.title,
      this.isActive = false})
      : super(key: key);
  final String image, title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            isActive
                ? BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 20,
                    color: kActiveShadowColor)
                : BoxShadow(
                    offset: Offset(0, 3), blurRadius: 6, color: kShadowColor)
          ]),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 70,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
