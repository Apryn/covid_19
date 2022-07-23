import 'package:covid_19/theme.dart';
import 'package:flutter/material.dart';
import 'myclipper.dart';

class HeaderwithImage extends StatelessWidget {
  const HeaderwithImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.topLeft,
                colors: [Color(0xff3383CD), Color(0xff11249F)]),
            image:
                DecorationImage(image: AssetImage("assets/images/virus.png"))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/Drcorona.png",
                  width: 200,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
                Positioned(
                    top: 20,
                    left: 120,
                    child: Text(
                      "All you need \nis Stay at Home",
                      style: kHeadingTextStyle.copyWith(color: Colors.white),
                    )),
                Container()
              ],
            ),
          ))
        ]),
      ),
    );
  }
}