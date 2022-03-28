import 'package:flutter/material.dart';
import 'package:home_and_listing/page2_widget.dart';
import 'package:home_and_listing/third_page.dart';

class Page1Widget extends StatefulWidget {
  const Page1Widget({Key? key}) : super(key: key);

  @override
  State<Page1Widget> createState() => _Page1WidgetState();
}

class _Page1WidgetState extends State<Page1Widget> {
  var lst = ['Map', 'Album', 'Phone'];

  @override
  Widget build(BuildContext context) {
    var s = myfunc(9, 1);
    print(s);

    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.deepPurpleAccent),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                  onPressed: () {
                    //click
                    //  Navigator.pushNamed(context, 'page2');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Page2Widget(
                                  text: "Data from Page 1",
                                )));
                  },
                  child: Text("Go to Page 2")),
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

  int myfunc(int a, int b) {
    return a + b;
  }
}
