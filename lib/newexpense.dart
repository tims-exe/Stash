import 'package:flutter/material.dart';

class newExpense extends StatefulWidget {
  const newExpense({super.key});

  @override
  State<newExpense> createState() => _newExpenseState();
}

class _newExpenseState extends State<newExpense> {
  bool isSpent = false;
  bool isReceived = false;
  var first = 1;

  @override
  Widget build(BuildContext context) {
    const bgColor = Color.fromRGBO(232, 218, 229, 1);
    const textDark = Color.fromRGBO(19, 7, 12, 1);
    const textRed = Color.fromRGBO(255, 0, 0, 1);
    const textGreen = Color.fromRGBO(24, 209, 76, 1);
    const transparent = Color.fromRGBO(0, 0, 0, 0);
    /*
    var spentText = Color.fromRGBO(255, 0, 0, 1);
    var receivedText = Color.fromRGBO(24, 209, 76, 1);
    */

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: bgColor,
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            //header
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.contain,
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const Text(
                    'Stash',
                    style: TextStyle(
                      color: textDark,
                      fontSize: 30,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'New',
                    style: TextStyle(
                      color: textDark,
                      fontSize: 46,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'Expense',
                    style: TextStyle(
                      color: textDark,
                      fontSize: 46,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40, left: 50, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: isSpent ? textRed : bgColor,
                      side: const BorderSide(
                        color: textRed,
                        width: 2,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        if (isSpent == false) {
                          isSpent = !isSpent;
                          if (first > 1) {
                            isReceived = !isReceived;
                          }
                          first++;
                        }
                      });
                      debugPrint(first.toString());
                    },
                    child: Text(
                      'Spent',
                      style: TextStyle(
                        color: isSpent ? bgColor : textRed,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        if (isReceived == false) {
                          isReceived = !isReceived;
                          if (first > 1) {
                            isSpent = !isSpent;
                          }
                          first++;
                        }
                      });
                      debugPrint(first.toString());
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: isReceived ? textGreen : bgColor,
                      side: BorderSide(color: textGreen, width: 2),
                    ),
                    child: Text(
                      'Recieved',
                      style: TextStyle(
                        color: isReceived ? bgColor : textGreen,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
              child: TextField(
                cursorColor: textDark,
                decoration: InputDecoration(
                  labelText: 'Amount',
                  labelStyle: const TextStyle(
                    color: textDark,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(19, 7, 12, 0.5),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(19, 7, 12, 0.5), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).pop();
                      });
                      debugPrint('cancelled');
                    },
                    icon: Icon(Icons.close),
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {
                      debugPrint('saved');
                    },
                    icon: Icon(Icons.check),
                    iconSize: 50,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
