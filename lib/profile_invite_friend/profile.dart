import 'package:flutter/material.dart';

import 'invite_tfit.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.person_add,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Invitefrnd()));
            },
          )
        ],
        title: const Center(
          child: Text(
            'Profile',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 80,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: 53,
                    width: 400,
                    decoration: BoxDecoration(
                        color: const Color(0xff3B3B3B),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        Text(
                          '@roger.hoffman',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: 53,
                    width: 400,
                    decoration: BoxDecoration(
                        color: const Color(0xff3B3B3B),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: const [
                        Text(
                          '@',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '@roger.hoffman',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Mycontainer(
                    name: 'Notifications Preferences',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Mycontainer(
                    name: 'BMI, MICROS, and Fat Calculator ',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Mycontainer(name: 'Logout '),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: Colors.black,
      //     items: const [
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.grid_4x4,
      //             color: Colors.white,
      //           ),
      //           label: ''),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.shopping_cart,
      //             color: Colors.white,
      //           ),
      //           label: ''),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.video_file,
      //             color: Colors.white,
      //           ),
      //           label: ''),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.person,
      //             color: Colors.white,
      //           ),
      //           label: ''),
      //     ]),
    );
  }
}

class Mycontainer extends StatelessWidget {
  final String name;
  const Mycontainer({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 53,
      width: 400,
      decoration: BoxDecoration(
          color: const Color(0xff3B3B3B),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        name,
        style: const TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}
