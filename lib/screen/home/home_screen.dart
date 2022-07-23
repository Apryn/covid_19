import 'package:covid_19/theme.dart';
import 'package:flutter/material.dart';
import 'components/headerwithimage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const HeaderwithImage(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xffE5E5E5))),
              child: Row(children: [
                Icon(
                  Icons.location_city,
                  color: kPrimaryColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: DropdownButton(
                    isExpanded: true,
                    underline: SizedBox(),
                    value: "Indonesia",
                    items: ['Indonesia', 'Bangladesh', 'United States', 'Japan']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {},
                  ),
                )
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
