import 'package:flutter/material.dart';
import 'package:t_fit_app/Surey/suvey_3.dart';
import 'Widgets/hide_keyboard.dart';
import 'Widgets/next_btn.dart';
import 'Widgets/single_button.dart';

class Survey2 extends StatefulWidget {
  const Survey2({super.key});

  @override
  State<Survey2> createState() => _Survey2State();
}

class _Survey2State extends State<Survey2> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.black,
      ),
      body: ListView(children: [
        GestureDetector(
          onTap: () => hideKeyboard(context),
          child: Container(
            width: double.infinity,
            color: Colors.black,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      name: 'From Website',
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
                      name: 'From T-Fit Customer',
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
                      name: 'From Book',
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
                      name: 'From Social Media',
                      ontap: () {
                        setState(() {
                          _currentIndex = 4;
                        });
                      },
                      clr: _currentIndex == 4
                          ? Colors.red
                          : const Color(0xff3B3B3B),
                    ),
                    const SizedBox(height: 12),
                    Singlebutn(
                      name: 'Other',
                      ontap: () {
                        setState(() {
                          _currentIndex = 5;
                        });
                      },
                      clr: _currentIndex == 5
                          ? Colors.red
                          : const Color(0xff3B3B3B),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27, top: 37, right: 27),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Customer Refferal Code',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Enter Here',
                          hintStyle: TextStyle(color: Colors.white)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 50, bottom: 50),
                child: Nextbtn(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Survey3()));
                  },
                  name: 'Next',
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
