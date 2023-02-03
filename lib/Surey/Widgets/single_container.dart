import 'package:flutter/material.dart';

class Singlecontainer extends StatelessWidget {
  final String name;
  final String imageName;
  final Color colorName;
  final VoidCallback ontap;
  const Singlecontainer({
    super.key,
    required this.name,
    required this.imageName,
    required this.colorName,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Container(
            height: 125,
            width: 99,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorName,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                        height: 69,
                        width: 67,
                        child: Image(image: AssetImage(imageName))),
                  ),
                  Expanded(
                    child: Text(
                      name,
                      style: const TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ]),
          ),
        )
      ],
    );
  }
}
