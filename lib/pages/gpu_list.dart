import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GpuListScreen extends StatefulWidget {
  @override
  _GpuListScreenState createState() => new _GpuListScreenState();
}

class _GpuListScreenState extends State<GpuListScreen> {
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
      _tile('GeForce RTX 2070 SUPER', '8 GB', Icons.border_all),
      _tile('GeForce GTX 1660 SUPER', '6 GB', Icons.border_all),
      _tile('Radeon RX 5700 XT', '8 GB', Icons.border_all),
      _tile('GeForce RTX 2060 SUPER', '8 GB', Icons.border_all),
      _tile('GeForce RTX 2080 Ti', '11 GB', Icons.border_all),

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