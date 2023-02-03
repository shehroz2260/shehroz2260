import 'package:flutter/material.dart';
import 'package:t_fit_app/Surey/Widgets/next_btn.dart';
import 'notification_5.dart';

class Notification4 extends StatefulWidget {
  const Notification4({super.key});

  @override
  State<Notification4> createState() => _Notification4State();
}

class _Notification4State extends State<Notification4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 62,
        backgroundColor: Colors.black,
        title: const Text(
          'Setup Notifications',
          style: TextStyle(color: Color(0xffC5CCD7), fontSize: 15),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 25),
                  child: Text(
                    'Meal Plan Notification',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SetupMeal(
                        name: 'Meal One',
                        time: '09:00 AM',
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const SetupMeal(
                        name: 'Meal Two',
                        time: '12:00 PM',
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const SetupMeal(
                        name: 'Meal Three',
                        time: '09:00 PM',
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            'Repaet',
                            style: TextStyle(
                                color: Color(0xffA19A9A), fontSize: 12),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Days()
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Divider(
                  thickness: 1,
                  color: Color(0xffC5CCD7),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 21),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Workout Plan Notifications',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      const SetupMeal(name: 'Time', time: '07:30 AM'),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            'Repaet',
                            style: TextStyle(
                                color: Color(0xffA19A9A), fontSize: 12),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Days()
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, bottom: 40, top: 234),
                  child: Nextbtn(
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Notification5()));
                      },
                      name: 'Edit'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SetupMeal extends StatelessWidget {
  final String name;
  final String time;
  const SetupMeal({
    super.key,
    required this.name,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 16,
          width: 61,
          child: Text(
            name,
            style: const TextStyle(color: Color(0xffA19A9A), fontSize: 12),
          ),
        ),
        const SizedBox(
          width: 22,
        ),
        GestureDetector(
          onTap: () {
            showTimePicker(context: context, initialTime: TimeOfDay.now());
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: 259,
            height: 36,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
                color: Colors.transparent),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  time,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
                const SizedBox(
                  height: 19,
                  width: 19,
                  child: Image(image: AssetImage('assets/images/clock.png')),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
