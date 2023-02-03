import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'notification_2.dart';
import 'notification_3.dart';

class Notificationtuser extends StatefulWidget {
  const Notificationtuser({super.key});

  @override
  State<Notificationtuser> createState() => _NotificationtuserState();
}

class _NotificationtuserState extends State<Notificationtuser> {
  int _currentIndex = 1;
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
                        _currentIndex = 1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: _currentIndex == 1
                              ? Colors.red
                              : const Color(0xff3b3b3b),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Notification2()));
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 165),
                      decoration: BoxDecoration(
                          color: const Color(0xff3b3b3b),
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
            const MylstTile(
                titlee: 'Fitness and Life style blog',
                subtitlee: '5 min read blog on “Fitness and life style blog”',
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

class MylstTile extends StatelessWidget {
  final String titlee;
  final String subtitlee;
  final String trailinge;
  const MylstTile({
    super.key,
    required this.titlee,
    required this.subtitlee,
    required this.trailinge,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      startActionPane: ActionPane(
        motion: const BehindMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: [
          SlidableAction(
            onPressed: (context) {},
            icon: Icons.delete,
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          titlee,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitlee, style: const TextStyle(color: Colors.white)),
        trailing: Text(trailinge, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
