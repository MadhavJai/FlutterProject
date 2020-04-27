import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class StorageListScreen extends StatefulWidget {
  @override
  _StorageListScreenState createState() => new _StorageListScreenState();
}

class _StorageListScreenState extends State<StorageListScreen> {
  static final showGrid = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('GPU List'),
      ),
      body: Center(child: _buildList(),),
    );
  }

  Widget _buildList() => ListView(
    children: <Widget>[
      _tile('Seagate Barracuda', '2 TB', Icons.border_all),
      _tile('Samsung 970 Evo', '500 GB', Icons.border_all),
      _tile('Crucial P1', '1 TB', Icons.border_all),
      _tile('Western Digital Blue', '1 TB', Icons.border_all),

    ],
  );

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
    title: Text(title, 
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      )),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );

}