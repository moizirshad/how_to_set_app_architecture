import 'package:flutter/material.dart';

class Page2Widget extends StatefulWidget {
  const Page2Widget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  State<Page2Widget> createState() => _Page2WidgetState();
}

class _Page2WidgetState extends State<Page2Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAGE 2'),
      ),
      body: Container(
        child: Column(
          children: [
            Center(child: Text(widget.text)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('GO back')),
          ],
        ),
      ),
    );
  }
}
