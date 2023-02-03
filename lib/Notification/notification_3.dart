import 'package:flutter/material.dart';
import 'package:t_fit_app/Surey/Widgets/next_btn.dart';

import 'notification_4.dart';

class Notification3 extends StatefulWidget {
  const Notification3({super.key});

  @override
  State<Notification3> createState() => _Notification3State();
}

class _Notification3State extends State<Notification3> {
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
          child: ListView(children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 25),
              child: Mainheading(
                name1: 'Meal Plan Notifications',
                name2: 'What time would you prefer to take your meal?',
                name3:
                    'your current meal plan have 3 meals a day, set time foreach of them. ',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 26, left: 35, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Setupcontainer(
                    name: 'Meal One',
                  ),
                  SizedBox(height: 8),
                  Setupcontainer(
                    name: 'Meal Two',
                  ),
                  SizedBox(height: 8),
                  Setupcontainer(
                    name: 'Meal Three',
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'What time would you prefer to receive reminder\nnotification for your meals?',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  SizedBox(height: 11),
                  Arrowcontainer(
                    name: '30 mins before the meals time',
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Repeat',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  Days(),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Divider(
              color: Color(0xffC5CCD7),
              thickness: 1,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Mainheading(
                  name1: 'Workout Plan Notifications',
                  name2: 'What time would you prefer for your daily workout?',
                  name3: 'Set time for your daily workout.'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, top: 15, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Setupcontainer(name: 'Workout'),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'What time would you prefer to receive reminder\nnotification for your workout?',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Arrowcontainer(name: '30 mins before the workout time'),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    'Repeat',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  Days()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Nextbtn(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Notification4()));
                  },
                  name: 'Apply'),
            )
          ]),
        ));
  }
}

class Days extends StatelessWidget {
  const Days({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 45, top: 12),
      child: Row(
        children: const [
          Text(
            'M',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'T',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'W',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'T',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'F',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'S',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'S',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class Mainheading extends StatelessWidget {
  final String name1;
  final String name2;
  final String name3;
  const Mainheading({
    super.key,
    required this.name1,
    required this.name2,
    required this.name3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name1,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          name2,
          style: const TextStyle(color: Colors.white, fontSize: 13),
        ),
        const SizedBox(height: 7),
        Text(
          name3,
          style: const TextStyle(color: Colors.grey, fontSize: 13),
        ),
      ],
    );
  }
}

class Setupcontainer extends StatelessWidget {
  final String name;
  const Setupcontainer({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showTimePicker(context: context, initialTime: TimeOfDay.now());
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 36,
        width: 330,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            name,
            style: const TextStyle(color: Color(0xffA19A9A), fontSize: 12),
          ),
          const SizedBox(
            height: 19,
            width: 19,
            child: Image(
              image: AssetImage('assets/images/clock.png'),
              fit: BoxFit.cover,
            ),
          )
        ]),
      ),
    );
  }
}

class Arrowcontainer extends StatelessWidget {
  final String name;
  const Arrowcontainer({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 36,
      width: 330,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          name,
          style: const TextStyle(color: Color(0xffA19A9A), fontSize: 12),
        ),
        const Icon(
          Icons.arrow_drop_down_outlined,
          color: Color(0xffC5CCD7),
        )
      ]),
    );
  }
}
