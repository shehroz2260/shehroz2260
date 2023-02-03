import 'package:flutter/material.dart';

import 'journal_2.dart';

class Journal1 extends StatefulWidget {
  const Journal1({super.key});

  @override
  State<Journal1> createState() => _Journal1State();
}

class _Journal1State extends State<Journal1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 63,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Journal2()));
              },
              child: const CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
            ),
          )
        ],
        backgroundColor: Colors.black,
        title: const Text(
          'Journal',
          style: TextStyle(color: Color(0xffC5CCD7), fontSize: 15),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 13, top: 30, bottom: 19),
                child: Text(
                  'Today',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MyListtile(
                subname: 'Workout, Swimming, Notes, Lunch for Maria,\nDishes',
                date: '02\nsep',
              ),
              Divider(
                color: Color(0xff3A3A3C),
                indent: 20,
                endIndent: 20,
                thickness: 1,
              ),
              Padding(
                padding: EdgeInsets.only(left: 13, top: 20, bottom: 20),
                child: Text(
                  'Augest',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              MyListtile(
                  date: '29\naug',
                  subname: 'Meeting with Darren, Notes, Shopping'),
              Divider(
                color: Color(0xff3A3A3C),
                indent: 20,
                endIndent: 20,
                thickness: 1,
              ),
              MyListtile(
                  date: '25\naug',
                  subname: 'Meeting with Darren, Notes, Shopping'),
              Divider(
                color: Color(0xff3A3A3C),
                indent: 20,
                endIndent: 20,
                thickness: 1,
              ),
              MyListtile(
                  date: '22\naug',
                  subname: 'Meeting with Darren, Notes, Shopping'),
              Divider(
                color: Color(0xff3A3A3C),
                indent: 20,
                endIndent: 20,
                thickness: 1,
              ),
              MyListtile(
                  date: '21\naug',
                  subname: 'Meeting with Darren, Notes, Shopping'),
              Divider(
                color: Color(0xff3A3A3C),
                indent: 20,
                endIndent: 20,
                thickness: 1,
              ),
              MyListtile(
                  date: '19\naug',
                  subname: 'Meeting with Darren, Notes, Shopping'),
              Divider(
                color: Color(0xff3A3A3C),
                indent: 20,
                endIndent: 20,
                thickness: 1,
              ),
              MyListtile(
                  date: '15\naug',
                  subname: 'Meeting with Darren, Notes, Shopping'),
              Divider(
                color: Color(0xff3A3A3C),
                indent: 20,
                endIndent: 20,
                thickness: 1,
              ),
              MyListtile(
                  date: '12\naug',
                  subname: 'Meeting with Darren, Notes, Shopping'),
              Divider(
                color: Color(0xff3A3A3C),
                indent: 20,
                endIndent: 20,
                thickness: 1,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class MyListtile extends StatelessWidget {
  final String date;
  final String subname;
  const MyListtile({
    super.key,
    required this.date,
    required this.subname,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        date,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
      ),
      title: const Text(
        'What I want to achieve today?',
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),
      subtitle: Text(
        subname,
        style: const TextStyle(color: Color(0xffA19A9A), fontSize: 13),
      ),
    );
  }
}
