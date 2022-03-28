import 'package:flutter/material.dart';
import 'package:home_and_listing/second_page.dart';
import 'package:home_and_listing/third_page.dart';
class FirstPageWidget extends StatefulWidget {
  const FirstPageWidget({Key? key}) : super(key: key);

  @override
  State<FirstPageWidget> createState() => _FirstPageWidgetState();
}

class _FirstPageWidgetState extends State<FirstPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAGE 1'),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.yellow),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("First"),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pop(context);
                },
                child: Text("GO BACK"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondPageWidget(
                              text: 'text sended from Page 1')));
                },
                child: Text("GO to Second Screen"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdPageWidget(),
                          settings: RouteSettings(arguments: 'SomeTEXT')));
                },
                child: Text("GO to page 3"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
