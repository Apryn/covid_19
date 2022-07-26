import 'package:covid_19/screen/home/components/headerwithimage.dart';
import 'package:covid_19/theme.dart';
import 'package:flutter/material.dart';

import 'components/symtom_card.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderwithImage(
                  image: "assets/images/coronadr.png",
                  toptext: "Get to know",
                  bottomtext: "About Covid-19"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Symptoms",
                      style: kTitleTextstyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        SymtomCard(
                          image: "assets/images/headache.png",
                          title: "Headache",
                          isActive: true,
                        ),
                        SymtomCard(
                          image: "assets/images/caugh.png",
                          title: "Caugh",
                        ),
                        SymtomCard(
                          image: "assets/images/fever.png",
                          title: "Fever",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Prevention",
                      style: kTitleTextstyle,
                    ),
                    const PreventionCard(
                      image: "assets/images/wear_mask.png",
                      title: "Wear Face Mask",
                      description:
                          "Sejak terjadinya karma alam yaitu virus covid kita diwajibkan untuk menggunakan masker demi masa depan yang akan datang, Peace Out",
                    ),
                    const PreventionCard(
                      image: "assets/images/wash_hands.png",
                      title: "Wash your hand bitch",
                      description:
                          "Setelah memakai masker kita juga waib sesering mungkin mencuci motor karena nanti di marahin karna motornya busuk",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PreventionCard extends StatelessWidget {
  const PreventionCard({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 8),
                blurRadius: 20,
                color: kShadowColor),
          ]),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Image.asset(
                image,
              )),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: kTitleTextstyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  description,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
