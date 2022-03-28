import 'package:flutter/material.dart';
import 'package:home_and_listing/third_page.dart';

class SecondPageWidget extends StatefulWidget {
  const SecondPageWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  State<SecondPageWidget> createState() => _SecondPageWidgetState();
}

class _SecondPageWidgetState extends State<SecondPageWidget> {
  // List
  @override
  Widget build(BuildContext context) {
    int a = 12;
    print("a == $a");
    a = 4;
    print("updated a == $a");

    String url = 'www.google.com';
    print('url == ' + url);

    dynamic di = 1;
    print('dynamic $di ');
    di = 'aasna';

    print('dynamic $di');
    di = 2.2;

    if (di is int) {
      print('its num');
    } else if (di is String) {
      print('its string');
    } else if (di is double) {
      print('its double');
    }

    var lst = [
      'Map',
      'Album',
      'Phone',
      'Map',
      'Album',
      'Phone',
      'Map',
      'Album',
      'Phone',
      'Map',
      'Album',
      'Phone',
      'Map',
      'Album',
      'Phone',
      'Map',
      'Album',
      'Phone'
    ];
    print(lst);

    dynamic listD = ['a', 1, 2.2];
    print(listD);

    return Scaffold(
        appBar: AppBar(title: Text('Page 2')),
        body: Container(
          decoration: BoxDecoration(color: Colors.green),
          child: ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: lst.length,
            itemBuilder: /*1*/ (context, i) {
              return ListTile(
                onTap: () {
                //   print(i.toString());
                // },
                // onTap: () {
                  print(lst[i]);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdPageWidget()));
                },
                title: Text(
                  lst[i],
                  style: TextStyle(fontSize: 18.0),
                ),
              );
            },
          ),
        ));
  }
}
