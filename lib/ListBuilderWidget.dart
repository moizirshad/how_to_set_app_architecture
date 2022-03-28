import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListBuilderWidget extends StatelessWidget {
  const ListBuilderWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List"),),
      body: Container(decoration: BoxDecoration(color: Colors.grey[200]),
      child: ListViewBuilder()),//ListViewBuilder()),
    );
  }
}

Widget l_list_view() {
  return ListView(
    children: const <Widget>[
      ListTile(
        leading: Icon(Icons.map),
        title: Text('Map'),
      ),
      ListTile(
        selectedTileColor: Colors.blueGrey,
        selectedColor: Colors.red,
        leading: Icon(Icons.photo_album),
        title: Text('Album'),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text('Phone'),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text('Phone'),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text('Phone'),
      ),
    ],
  );
}


class ListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arr = ['ssdsassds','bdfdf','cdsfdsf','ddsfdsf','edsff', 'fsdfdsfds', 'gdfdsfsdf'];
    return ListView.builder(
        itemCount: arr.length,
        itemBuilder: (BuildContext context,int index){
          return list_Tile(index, arr[index]);
        }
    );
  }
}

Widget list_Tile(int index, String name) {
  return ListTile(
      leading: Icon(Icons.theaters_rounded),
      trailing: Icon(Icons.headset),
      // trailing: Text(name[index],
      //   style: TextStyle(
      //       color: Colors.green,fontSize: 15),),
      title:Text(name)//Text("List item $index")
  );
}
// Widget l_list_builder() {
//   return ListView.builder(
//     itemCount: 6,
//     itemBuilder: (context, i) {
//       return numberTruthList[i]
//           ? ListTile(
//         title: Text(numberTruthList[i].toString()),
//       )
//           : Container(
//         height: 0,
//         width: 0,
//       );
//     },
//   );
// }