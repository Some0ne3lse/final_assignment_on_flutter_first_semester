import 'package:flutter/material.dart';

class ImageAndText extends StatelessWidget {
  const ImageAndText({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 300,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        )
      ],
    );
  }
}
