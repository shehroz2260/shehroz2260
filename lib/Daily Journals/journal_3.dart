import 'package:flutter/material.dart';

class Jornal3 extends StatefulWidget {
  const Jornal3({super.key});

  @override
  State<Jornal3> createState() => _Jornal3State();
}

class _Jornal3State extends State<Jornal3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        toolbarHeight: 70,
        title: const Text(
          'Journal Details',
          style: TextStyle(color: Color(0xffC5CCD7), fontSize: 15),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: const Text(
                  'What i need to do\nToday?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                trailing: RichText(
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
                        fontSize: 12,
                      )),
                ])),
              ),
              const SizedBox(
                height: 37,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Details(
                      num: '1.',
                      txt: 'Workout for 20 mins',
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Details(
                      num: '2.',
                      txt: 'Shoping',
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Details(
                      num: '3.',
                      txt: 'Evening Walk at 6:00 PM',
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Details(
                      num: '4.',
                      txt: 'Teriyaki Salman stir-fry for dinner',
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Details(
                      num: '5.',
                      txt: 'Night Skin Care',
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

class Details extends StatelessWidget {
  final String num;
  final String txt;
  const Details({
    super.key,
    required this.num,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 21,
          width: 21,
          color: const Color(0xff8B878F),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          num,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          txt,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ],
    );
  }
}
