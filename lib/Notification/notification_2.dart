import 'package:flutter/material.dart';

import 'notification_1.dart';
import 'notification_3.dart';

class Notification2 extends StatefulWidget {
  const Notification2({super.key});

  @override
  State<Notification2> createState() => _Notification2State();
}

class _Notification2State extends State<Notification2> {
  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Notification3()));
              },
              icon: const Icon(
                Icons.notifications,
              ))
        ],
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'Notification',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: ListView(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff3b3b3b),
                        borderRadius: BorderRadius.circular(30)),
                    height: 28,
                    width: 328,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff3b3b3b),
                          borderRadius: BorderRadius.circular(30)),
                      height: 28,
                      width: 162,
                      child: const Center(
                        child: Text(
                          'New',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = 2;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 165),
                      decoration: BoxDecoration(
                          color: _currentIndex == 2
                              ? Colors.red
                              : const Color(0xff3b3b3b),
                          borderRadius: BorderRadius.circular(30)),
                      height: 28,
                      width: 162,
                      child: const Center(
                        child: Text(
                          'All',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const MylstTile(
              subtitlee: 'Trainer has assigned you a workout plan',
              titlee: 'New Plan Assigned ',
              trailinge: '9:45 Am',
            ),
            const Divider(
              color: Colors.white,
              thickness: 1,
            ),
            const MylstTile(
                titlee: 'Plan completed',
                subtitlee: 'Your workout plan hsa been completed',
                trailinge: '9:45 Am'),
            const Divider(
              color: Colors.white,
              thickness: 1,
            ),
            const MylstTile(
                titlee: 'Plan unassigned',
                subtitlee: 'Admin has unassigned you the workout plan',
                trailinge: '9:45 Am'),
            const Divider(
              color: Colors.white,
              thickness: 1,
            ),
            const MylstTile(
                titlee: 'Terms and conditions updated ',
                subtitlee: 'T-Fit terms and confitions has been updated',
                trailinge: '9:45 Am'),
            const Divider(
              color: Colors.white,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
