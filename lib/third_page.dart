import 'package:flutter/material.dart';

class ThirdPageWidget extends StatefulWidget {
  const ThirdPageWidget({Key? key}) : super(key: key);

  @override
  State<ThirdPageWidget> createState() => _ThirdPageWidgetState();
}

class _ThirdPageWidgetState extends State<ThirdPageWidget> {
  @override
  Widget build(BuildContext context) {
    // final text = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.red),
        child: Center(
          child: Column(children: [
            Text('text ' + "Third Page"),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => true);
              },
              child: Text("GO back"),
            )
          ]),
        ),
      ),
    );
  }
}
