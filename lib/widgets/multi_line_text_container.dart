import 'package:flutter/material.dart';

class MultilineTextContainer extends StatelessWidget {
  const MultilineTextContainer(
      {Key? key, required this.text1, required this.text2, required this.text3})
      : super(key: key);

  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$text1+ ",
          style: const TextStyle(fontSize: 32, fontFamily: 'Montserrat'),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text2,
              style: const TextStyle(
                  color: Color(0xffB96220),
                  fontSize: 12,
                  fontFamily: 'Montserrat'),
            ),
            Text(
              text3,
              style: const TextStyle(
                  color: Color(0xffB96220),
                  fontSize: 12,
                  fontFamily: 'Montserrat'),
            )
          ],
        )
      ],
    );
  }
}
