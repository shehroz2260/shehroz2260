import 'package:flutter/material.dart';

import '../Surey/Widgets/next_btn.dart';

class Invitefrnd extends StatefulWidget {
  const Invitefrnd({super.key});

  @override
  State<Invitefrnd> createState() => _InvitefrndState();
}

class _InvitefrndState extends State<Invitefrnd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Invite to t-Fit',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.black,
        toolbarHeight: 80,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(children: [
            Container(
              height: 144,
              width: 144,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/invitation.png'),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 51,
            ),
            const Text(
              'Invite Your Friend To T-Fit',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 21),
            ),
            const Text(
              '  Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy eirmod\n           tempor invidunt ut labore et ?',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            const SizedBox(
              height: 17,
            ),
            const Text(
              'Your Refferal Code',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              '6KY9J2CRH',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 21),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
              child: Nextbtn(
                name: 'Share Refferal COde',
                ontap: () {},
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Copy Referral Code',
              style: TextStyle(color: Colors.red, fontSize: 17),
            ),
          ]),
        ),
      ),
    );
  }
}
