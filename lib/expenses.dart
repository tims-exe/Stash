// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class expenseCard extends StatelessWidget {
  String name;
  String date;
  double amt;
  Function(BuildContext)? onDelete;

  expenseCard({
    super.key,
    required this.name,
    required this.date,
    required this.amt,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    const textLight = Color.fromRGBO(232, 218, 229, 1);
    const textRed = Color.fromRGBO(255, 83, 83, 1);
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: onDelete,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(12),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(
                color: textLight,
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              amt.toString(),
              style: TextStyle(
                color: textRed,
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
