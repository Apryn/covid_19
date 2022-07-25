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
                    children: const[
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
