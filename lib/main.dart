import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stash/home.dart';

void main() {
  runApp(const MyApp());

  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.leanBack,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stash',
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    const bgColor = Color.fromRGBO(232, 218, 229, 1);
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor,
      body: HomePage(),
    );
  }
}
