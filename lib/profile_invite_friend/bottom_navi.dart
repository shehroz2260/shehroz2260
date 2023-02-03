import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_fit_app/profile_invite_friend/profile.dart';
import 'package:t_fit_app/Notification/notification_1.dart';
import '../User Dashbord/userdashboard_2.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  static final List<Widget> _optionWidgets = <Widget>[
    const UserDashBoard(),
    const Text('data'),
    const Text('Video'),
    const Profile(),
  ];
  int _number = 0;
  void _ontap(int index) {
    setState(() {
      _number = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: const BorderSide(color: Colors.black, width: 5)),
        backgroundColor: const Color(0xff3b3b3b),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  color: Colors.black87,
                  height: 300,
                  child: Column(
                    children: const [
                      MyListTile(
                        icon: Icons.camera_alt,
                        subtitle: 'Click to capture image from Camera',
                        title: 'Camera',
                      )
                    ],
                  ),
                );
              });
        },
        child: const Icon(Icons.add),
      ),
      body: _optionWidgets[_number],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xff3b3b3b),
          currentIndex: _number,
          onTap: _ontap,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 3,
          selectedItemColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shop_rounded), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_rounded), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ],
        ),
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  const MyListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 40,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
