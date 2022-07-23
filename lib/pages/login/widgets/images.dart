import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Transform.translate(
          offset: const Offset(0, -30),
          child: Image.asset(
            'assets/images/burger-front.png',
            width: 90,
            height: 90,
          ),
        ),
        Transform.translate(
          offset: const Offset(0, 30),
          child: Image.asset(
            'assets/images/donut.png',
            width: 136,
            height: 136,
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -40),
          child: Image.asset(
            'assets/images/hot-dog.png',
            width: 100,
            height: 100,
          ),
        ),
      ],
    );
  }
}
