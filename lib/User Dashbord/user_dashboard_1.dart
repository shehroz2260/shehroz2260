import 'package:flutter/material.dart';

import '../Notification/notification_1.dart';

class Dashboard1 extends StatefulWidget {
  const Dashboard1({super.key});

  @override
  State<Dashboard1> createState() => _Dashboard1State();
}

class _Dashboard1State extends State<Dashboard1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
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
                        radius: 17,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: const Color(0xff3b3b3b),
                          radius: 15,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const SizedBox(
                              height: 16,
                              width: 16,
                              child: Image(
                                  image: AssetImage('assets/images/gym.png')),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const Notificationtuser(),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff474747),
                                borderRadius: BorderRadius.circular(15)),
                            height: 315,
                            width: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text('28 Jul, 2022',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12)),
                                      CircleAvatar(
                                        radius: 12,
                                        backgroundColor: Colors.red,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    'Dear Diary',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                ),
                                const MyCheckBox(
                                  name: 'Do exercise at\n8:30 am',
                                ),
                                const MyCheckBox(
                                  name: 'Room makeover,\nlamp cover cha...',
                                ),
                                const MyCheckBox(
                                  name: 'Make a cake',
                                ),
                                const MyCheckBox(
                                  name: 'Read a book',
                                ),
                                const MyCheckBox(
                                  name: 'Watch Masterchef\nep. 125',
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                    'See more',
                                    style: TextStyle(
                                        color: Color(0xffFFA200), fontSize: 10),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 150,
                                width: 170,
                                decoration: BoxDecoration(
                                    color: const Color(0xff474747),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Good Sleep',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        'Start Listening',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                        height: 53,
                                        width: 160,
                                        child: Stack(children: [
                                          const Image(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'assets/images/Vector 117.png')),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 10, left: 5),
                                            child: const Image(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'assets/images/Vector 117.png')),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 10, left: 10),
                                            child: const Image(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'assets/images/Vector 117.png')),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 15, left: 15),
                                            child: const Image(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'assets/images/Vector 117.png')),
                                          ),
                                          const Image(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'assets/images/Vector 118.png')),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 5, left: 5),
                                            child: const Image(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'assets/images/Vector 118.png')),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 10, left: 10),
                                            child: const Image(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'assets/images/Vector 118.png')),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 15, left: 15),
                                            child: const Image(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'assets/images/Vector 118.png')),
                                          ),
                                        ]),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 150,
                                width: 170,
                                decoration: BoxDecoration(
                                    color: const Color(0xff474747),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Today’s calories intake',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '0 kCal',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 12),
                            height: 60,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xff474747)),
                            child: Row(
                              children: const [
                                Image(
                                    height: 21,
                                    width: 21,
                                    image: AssetImage(
                                        'assets/images/Vector (1).png')),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'make an\nAppointment',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 13),
                            height: 60,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xff474747)),
                            child: Row(
                              children: const [
                                Image(
                                  image: AssetImage(
                                      'assets/images/Vector (2).png'),
                                  height: 16,
                                  width: 31,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  'Log your\nProgress',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                const Divider(
                  thickness: 5,
                  color: Color(0xff474747),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyCheckBox extends StatefulWidget {
  final String name;
  const MyCheckBox({
    super.key,
    required this.name,
  });

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool? ischeck = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          checkColor: Colors.white,
          activeColor: Colors.green,
          value: ischeck,
          onChanged: (newbool) {
            setState(() {
              ischeck = newbool;
            });
          },
        ),
        Text(
          widget.name,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        )
      ],
    );
  }
}
