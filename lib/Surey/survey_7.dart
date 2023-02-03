import 'package:flutter/material.dart';
import 'package:t_fit_app/Surey/Widgets/next_btn.dart';

import '../profile_invite_friend/bottom_navi.dart';

class Survey7 extends StatefulWidget {
  const Survey7({super.key});

  @override
  State<Survey7> createState() => _Survey7State();
}

class _Survey7State extends State<Survey7> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 200),
              child: Center(
                child: Text(
                  'Thank You!',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 34),
                ),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 48, vertical: 22),
                child: Text(
                  '  Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy eirmod\n           tempor invidunt ut labore et ?',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              child: Nextbtn(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNavigation()));
                  },
                  name: 'Get Into the App'),
            )
          ],
        ),
      ),
    );
  }
}
