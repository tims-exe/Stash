import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stash/expenses.dart';
import 'package:stash/newexpense.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const textDark = Color.fromRGBO(19, 7, 12, 1);
    const secondaryColor = Color.fromRGBO(97, 77, 107, 1);
    const textLight = Color.fromRGBO(232, 218, 229, 1);
    const bgColor = Color.fromRGBO(232, 218, 229, 1);

    return Column(
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

        // balance
        const Padding(
          padding: EdgeInsets.only(top: 40, left: 40, right: 40),
          child: Column(
            children: [
              Text(
                'Your Balance : ',
                style: TextStyle(
                  color: textDark,
                  fontSize: 22,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  '₹ 9876',
                  style: TextStyle(
                    color: textDark,
                    fontSize: 50,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(44),
                  topLeft: Radius.circular(44),
                ),
                color: secondaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 44,
                  left: 40,
                  bottom: 10,
                  right: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Expenses',
                      style: TextStyle(
                        color: textLight,
                        fontSize: 30,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      height: 350,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return const expenseCard();
                          },
                        ),
                      ),
                    ),
                    /*
                    SizedBox(
                      height: 70,
                      child: IconButton(
                        onPressed: () => {},
                        icon: const Image(
                          image: AssetImage('assets/add_icon.png'),
                        ),
                      ),
                    ),*/
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                        //bottom: 15,
                        left: 85,
                        right: 85,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const newExpense();
                              },
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: textLight,
                          backgroundColor: Color.fromRGBO(232, 218, 229, 0.7),
                        ),
                        child: const Text(
                          '✨ New ✨',
                          style: TextStyle(
                            color: textDark,
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
