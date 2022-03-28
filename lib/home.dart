import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY APP',
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          brightness: Brightness.light,
          textTheme: TextTheme(  headline4: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.red),
          )
      ),
      home: const MySecondPage(),//MyHomePage(title: 'Flutter Demo Home Page'),// ,
    );
  }
}



class MySecondPage extends StatefulWidget {
  const MySecondPage({Key? key}) : super(key: key);

  @override
  _MySecondPageState createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    for (var i = 0; i < 30; i++) {
      children.add(item(context, "Title One", "Description", i.toString()),);
    }
    return Scaffold(
      appBar: AppBar(title: Text("MY DEMO APP"), leading: Center(child: Text("Lead", style: TextStyle( fontSize: 20))),),
      body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
        child: Column(
            children: children,
          )
      ),
    );
    // );


    /* Container(
        decoration: BoxDecoration(color: Colors.blue),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //ABC
            Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(40.0)),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("ABC ", style: Theme.of(context).textTheme.headline4,),
                  Icon(
                    Icons.ac_unit,
                    color: Colors.red[800],
                      size: 100

                  ),

                  Icon(
                    Icons.account_circle,
                    color: Colors.red[800],
                    size: 100
                  ),




                ],
              ),
            ),
          //XYZ
            Container(
              decoration: BoxDecoration(color: Colors.cyan),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("XYZ ", style: Theme.of(context).textTheme.headline4,),
                  Text("XYZ1 ", style: Theme.of(context).textTheme.headline4,),
                  Text("XYZ2", style: Theme.of(context).textTheme.headline4,),
                  Text("XYZ3", style: Theme.of(context).textTheme.headline4,),
                  Text("XYZ4", style: Theme.of(context).textTheme.headline4,),

                ],
              ),
            ),
          ],
        ),
      ),
    )*/

  }
}



Widget item(BuildContext context, String title, String des, String value) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Container(
        decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(25.0),),
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
                      SizedBox(height: 8,),
                      Text(des)
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [ Icon(
                          Icons.ac_unit,
                          color: Colors.red[800],
                          size: 30
                      ),
                        Text(value)],
                    )
                  ],
                )
              ]
          ),
        ),
      ),
    ),
  );
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('MY APP'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'You have pushed the button this many times:',

              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


