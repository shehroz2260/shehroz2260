import 'package:flutter/material.dart';

class Nextbtn extends StatelessWidget {
  final VoidCallback ontap;
  final String name;
  const Nextbtn({
    super.key,
    required this.ontap,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: 375,
      onPressed: ontap,
      color: Colors.red,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        name,
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
