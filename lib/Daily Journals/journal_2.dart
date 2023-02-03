import 'package:flutter/material.dart';
import 'package:t_fit_app/Surey/Widgets/hide_keyboard.dart';

import 'journal_3.dart';

class Journal2 extends StatefulWidget {
  const Journal2({super.key});

  @override
  State<Journal2> createState() => _Journal2State();
}

class _Journal2State extends State<Journal2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        title: const Text(
          'Create Journal',
          style: TextStyle(color: Color(0xffC5CCD7), fontSize: 15),
        ),
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Jornal3()));
              },
              icon: const Icon(
                Icons.check,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: GestureDetector(
        onTap: () {
          hideKeyboard(context);
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Expanded(
                      child: ListTile(
                        title: Text(
                          '5 min journal',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Your daily diary',
                          style:
                              TextStyle(color: Color(0xff8B878F), fontSize: 14),
                        ),
                        trailing: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xff8B878F),
                          child: Icon(
                            Icons.calendar_today_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: '25 July',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '\n2023 Mon',
                          style: TextStyle(
                            color: Color(0xff8B878F),
                            fontSize: 11,
                          )),
                    ]))
                  ],
                ),
              ),
              const Divider(
                color: Color(0xff3A3A3C),
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Title',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Mytxtfield(
                      pretxt: '1.',
                      hinttxt: ' Write here',
                    ),
                    Mytxtfield(
                      pretxt: '2.',
                      hinttxt: ' Write here',
                    ),
                    Mytxtfield(
                      pretxt: '3.',
                      hinttxt: ' Write here',
                    ),
                    Mytxtfield(
                      pretxt: '4.',
                      hinttxt: ' Write here',
                    ),
                    Mytxtfield(
                      pretxt: '5.',
                      hinttxt: ' Write here',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Mytxtfield extends StatelessWidget {
  final String hinttxt;
  final String pretxt;
  const Mytxtfield({
    super.key,
    required this.hinttxt,
    required this.pretxt,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          pretxt,
          style: const TextStyle(color: Color(0xff8B878F), fontSize: 15),
        ),
        Expanded(
          child: TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                prefixStyle: const TextStyle(color: Colors.white),
                hintText: hinttxt,
                hintStyle:
                    const TextStyle(color: Color(0xff8B878F), fontSize: 12)),
          ),
        ),
      ],
    );
  }
}
