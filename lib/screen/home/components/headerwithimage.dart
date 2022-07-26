import 'package:covid_19/screen/Info/info_screen.dart';
import 'package:covid_19/theme.dart';
import 'package:flutter/material.dart';
import 'myclipper.dart';

class HeaderwithImage extends StatelessWidget {
  const HeaderwithImage({
    Key? key,
    required this.image,
    required this.toptext,
    required this.bottomtext,
  }) : super(key: key);
  final String image;
  final String toptext;
  final String bottomtext;

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
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const InfoScreen();
                }));
              },
              icon: const Icon(Icons.menu),
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  width: 200,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
                Positioned(
                    top: 20,
                    left: 125,
                    child: Text(
                      "$toptext \n$bottomtext",
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
