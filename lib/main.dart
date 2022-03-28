import 'package:flutter/material.dart';
import 'package:home_and_listing/ListBuilderWidget.dart';
import 'package:home_and_listing/first_page.dart';
import 'package:home_and_listing/home.dart';
import 'package:home_and_listing/login.dart';
import 'package:home_and_listing/page1_widget.dart';
import 'package:home_and_listing/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MaterialApp(
          home: mainTabBar(),
        ),
      ),
    );
  }
}





mainTabBar() {
  return Container(
    color: Colors.deepOrangeAccent[300],
    child: SafeArea(
      top: false,
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          bottomNavigationBar: menu(),
          body: TabBarView(
            physics: PageScrollPhysics(),
            children: [
              ListBuilderWidget(),
              HomeWidget(),
              FirstPageWidget(),// Container(decoration: BoxDecoration(color: Colors.red),),
              SecondPageWidget(text: '',),//Container(decoration: BoxDecoration(color: Colors.green),),
              Page1Widget(),
              // Container(decoration: BoxDecoration(color: Colors.yellowAccent),),
              // Container(decoration: BoxDecoration(color: Colors.green),),
              // Container(decoration: BoxDecoration(color: Colors.blueGrey),),
              // Container(decoration: BoxDecoration(color: Colors.blueGrey),),
              // Container(decoration: BoxDecoration(color: Colors.yellowAccent),),
              // ListBuilderWidget(),
              // ,// Container(decoration: BoxDecoration(color: Colors.purpleAccent),),
              // //Container(decoration: BoxDecoration(color: Colors.yellowAccent),),
              // Container(decoration: BoxDecoration(color: Colors.blue),),////LoginWidget(),//

            ],
          ),
        ),
      ),
    ),
  );
}

Widget menu() {
  return Container(
    color: Color(0xFF485664),
    child: TabBar(
      labelColor: Color(0xFFF14B6A),
      unselectedLabelColor: Colors.white,
      indicatorColor: Color(0xFFF14B6A),
      indicatorSize: TabBarIndicatorSize.label,
      labelPadding: EdgeInsets.zero,
      labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      tabs: const [
        Tab(
          text: "Home",
          icon: Icon(Icons.home),
        ),
        Tab(
          text: "Export",
          icon: Icon(Icons.emoji_emotions),
        ),
        Tab(
          text: "Car",
          icon: Icon(Icons.garage),
        ),
        Tab(
          text: "Sell",
          icon: Icon(Icons.sell),
        ),
        Tab(
          text: "Saved",
          icon: Icon(Icons.bookmark),
        ),
      ],
    ),
  );
}
