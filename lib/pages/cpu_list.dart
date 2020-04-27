import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CpuListScreen extends StatefulWidget {
  @override
  _CpuListScreenState createState() => new _CpuListScreenState();
}

class _CpuListScreenState extends State<CpuListScreen> {
  static final showGrid = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('CPU List'),
      ),
      body: Center(child: _buildList(),),
    );
  }

  Widget _buildList() => ListView(
    children: <Widget>[
      _tile('Intel Core i5-9400f', '6 cores, 6 threa  ds', Icons.border_all),
      _tile('AMD Ryzen 5 3600', '6 cores, 12 threads', Icons.border_all),
      _tile('Intel Core i7-8700k', '6 cores, 12 threads', Icons.border_all),
      _tile('AMD Ryzen 5 2400g', '4 cores, 8 threads', Icons.border_all),
      _tile('Intel Core i9-9900k', '8 cores, 16 threads', Icons.border_all),

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

