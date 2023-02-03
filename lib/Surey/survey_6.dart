import 'package:flutter/material.dart';

import 'Widgets/next_btn.dart';
import 'survey_7.dart';

class Survey6 extends StatefulWidget {
  const Survey6({super.key});

  @override
  State<Survey6> createState() => _Survey6State();
}

class _Survey6State extends State<Survey6> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 80,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 110),
            child: Text(
              'Did you already\npurchase any of the\nT-Fit program?',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
            child: Row(
              children: [
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  height: 50,
                  minWidth: 155,
                  color:
                      _currentIndex == 1 ? Colors.red : const Color(0xff3B3B3B),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  child: const Text(
                    'No',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  height: 50,
                  minWidth: 155,
                  color:
                      _currentIndex == 2 ? Colors.red : const Color(0xff3B3B3B),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  child: const Text(
                    'Yes',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 18, right: 18, bottom: 10, top: 100),
            child: Nextbtn(
              name: 'Done',
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Survey7()));
              },
            ),
          ),
        ]),
      ),
    );
  }
}
