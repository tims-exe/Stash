// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class expenseCard extends StatelessWidget {
  const expenseCard({super.key});

  @override
  Widget build(BuildContext context) {
    const textLight = Color.fromRGBO(232, 218, 229, 1);
    const textRed = Color.fromRGBO(255, 83, 83, 1);
    return const Padding(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '🥗 Food',
            style: TextStyle(
              color: textLight,
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '-300',
            style: TextStyle(
              color: textRed,
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
