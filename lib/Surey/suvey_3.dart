import 'package:flutter/material.dart';
import 'package:t_fit_app/Surey/survey_1.dart';

import 'Widgets/hide_keyboard.dart';
import 'Widgets/next_btn.dart';
import 'Widgets/single_button.dart';

class Survey3 extends StatefulWidget {
  const Survey3({super.key});

  @override
  State<Survey3> createState() => _Survey3State();
}

class _Survey3State extends State<Survey3> {
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
        child: ListView(scrollDirection: Axis.vertical, children: [
          GestureDetector(
            onTap: () {
              hideKeyboard(context);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28, top: 50),
                  child: Column(
                    children: const [
                      Text(
                        'Tell us Some more about this',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'How did you\nhear about this?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 42),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Singlebutn(
                        name: 'From T-Fit Website',
                        ontap: () {
                          setState(() {
                            _currentIndex = 1;
                          });
                        },
                        clr: _currentIndex == 1
                            ? Colors.red
                            : const Color(0xff3B3B3B),
                      ),
                      const SizedBox(height: 12),
                      Singlebutn(
                        name: 'From Book',
                        ontap: () {
                          setState(() {
                            _currentIndex = 2;
                          });
                        },
                        clr: _currentIndex == 2
                            ? Colors.red
                            : const Color(0xff3B3B3B),
                      ),
                      const SizedBox(height: 12),
                      Singlebutn(
                        name: 'From Social Media',
                        ontap: () {
                          setState(() {
                            _currentIndex = 3;
                          });
                        },
                        clr: _currentIndex == 3
                            ? Colors.red
                            : const Color(0xff3B3B3B),
                      ),
                      const SizedBox(height: 12),
                      Singlebutn(
                        name: 'Other',
                        ontap: () {
                          setState(() {
                            _currentIndex = 4;
                          });
                        },
                        clr: _currentIndex == 4
                            ? Colors.red
                            : const Color(0xff3B3B3B),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 27, right: 27, top: 37),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: "Other's Title",
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
                  child: Nextbtn(
                    ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Survey1()));
                    },
                    name: 'Next',
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
