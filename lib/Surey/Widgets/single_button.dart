import 'package:flutter/material.dart';

class Singlebutn extends StatelessWidget {
  final String name;
  final VoidCallback ontap;
  final Color clr;
  const Singlebutn({
    super.key,
    required this.name,
    required this.ontap,
    required this.clr,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: 375,
      onPressed: ontap,
      color: clr,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        name,
        style: const TextStyle(fontSize: 17, color: Colors.white),
      ),
    );
  }
}
