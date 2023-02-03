import 'package:flutter/material.dart';
import 'package:t_fit_app/Surey/Widgets/single_container.dart';
import 'package:t_fit_app/Surey/survey_2.dart';
import 'package:t_fit_app/Surey/survey_4.dart';
import 'package:t_fit_app/Surey/survey_5.dart';

import 'Widgets/next_btn.dart';

class Survey1 extends StatefulWidget {
  const Survey1({super.key});

  @override
  State<Survey1> createState() => _Survey1State();
}

class _Survey1State extends State<Survey1> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 120),
            child: Text(
              'How did you\nfind us?',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 44,
          ),
          Row(
            children: [
              const SizedBox(
                width: 26,
              ),
              Expanded(
                  child: Singlecontainer(
                imageName: 'assets/images/image 1.png',
                name: 'Taylor Fitness',
                colorName:
                    _currentIndex == 1 ? Colors.red : const Color(0xff3B3B3B),
                ontap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
              )),
              const SizedBox(
                width: 13,
              ),
              Expanded(
                  child: Singlecontainer(
                imageName: 'assets/images/image 2.png',
                name: 'Affliate',
                colorName:
                    _currentIndex == 2 ? Colors.red : const Color(0xff3B3B3B),
                ontap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
              )),
              const SizedBox(
                width: 13,
              ),
              Expanded(
                  child: Singlecontainer(
                name: 'Other',
                imageName: 'assets/images/image 3.png',
                colorName:
                    _currentIndex == 3 ? Colors.red : const Color(0xff3B3B3B),
                ontap: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                },
              )),
              const SizedBox(
                width: 26,
              ),
            ],
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.only(left: 26, right: 26, bottom: 40),
            child: Nextbtn(
              ontap: () {
                switch (_currentIndex) {
                  case 1:
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Survey2()));

                    break;
                  case 2:
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Survey4()));

                    break;
                  case 3:
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Survey5()));

                    break;
                }
              },
              name: 'Next',
            ),
          )
        ]),
      ),
    );
  }
}
