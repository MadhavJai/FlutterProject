import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RamListScreen extends StatefulWidget {
  @override
  _RamListScreenState createState() => new _RamListScreenState();
}

class _RamListScreenState extends State<RamListScreen> {
  static final showGrid = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('RAM List'),
      ),
      body: Center(child: _buildList(),),
    );
  }


  Widget _buildList() => ListView(
    children: <Widget>[
      _tile('Corsair Vengeance LPX', '16 GB', Icons.border_all),
      _tile('G. Skill Ripjaws V', '16 GB', Icons.border_all),
      _tile('G. Skill Trident Z RGB', '32 GB', Icons.border_all),
      _tile('G. Skill Aegis', '8 GB', Icons.border_all),
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