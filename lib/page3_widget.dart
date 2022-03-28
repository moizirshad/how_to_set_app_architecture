import 'package:flutter/material.dart';

class Page3Widget extends StatefulWidget {
  const Page3Widget({Key? key}) : super(key: key);

  @override
  State<Page3Widget> createState() => _Page3WidgetState();
}

class _Page3WidgetState extends State<Page3Widget> {
  @override
  Widget build(BuildContext context) {
    final text = ModalRoute.of(context)!.settings.arguments as String;

    return Container(
      child: Text(text),
    );
  }
}
