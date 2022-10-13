import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({
    Key? key,
    required this.img,
    required this.name,
  }) : super(key: key);
  final String img;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            const CircleColor(),
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
            CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(img),
            )
          ],
        ),
        const SizedBox(height: 5),
        Text(name),
        const SizedBox(height: 5),
      ],
    );
  }
}

class CircleColor extends StatelessWidget {
  const CircleColor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xffee0000),
            Color(0xffeeee00),
          ],
        ),
      ),
    );
  }
}
