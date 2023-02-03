import 'package:flutter/material.dart';
import 'package:t_fit_app/User%20Dashbord/user_dashboard_1.dart';

import '../Notification/notification_1.dart';

class UserDashBoard extends StatefulWidget {
  const UserDashBoard({super.key});

  @override
  State<UserDashBoard> createState() => _UserDashBoardState();
}

class _UserDashBoardState extends State<UserDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.black,
      height: double.infinity,
      width: double.infinity,
      child: Column(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22, top: 30),
              child: Row(
                children: [
                  const Icon(
                    Icons.sunny,
                    color: Colors.white,
                  ),
                  Expanded(child: Container()),
                  const Text(
                    'Dashboard',
                    style: TextStyle(color: Color(0xffC5CCD7)),
                  ),
                  Expanded(child: Container()),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundColor: const Color(0xff3b3b3b),
                      radius: 18,
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Dashboard1()));
                          },
                          icon: const Icon(
                            Icons.person,
                            size: 18,
                          )),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Notificationtuser(),
                            ));
                      },
                      icon: const Icon(
                        Icons.notifications,
                        color: Color(0xffC5CCD7),
                        size: 25,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Hi Fantech Labs!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Trane Insane or remain the same',
                    style: TextStyle(
                      color: Color(0xffE261B3),
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '22 September 2022',
                    style: TextStyle(
                      color: Color(0xff0F5FDA),
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}
