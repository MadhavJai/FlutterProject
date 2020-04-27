import 'package:flutter/material.dart';
import 'package:test_app/pages/cpu_list.dart';
import 'package:flutter/cupertino.dart';

import 'cpu_list.dart';


class PCBuildForm extends StatefulWidget{
  @override
  _PCBuildForm createState() => new _PCBuildForm();
}

class _PCBuildForm extends State<PCBuildForm> {
  static final showGrid = true; // Set to false to show ListView
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('PC builder'),
      ),
      body: Center(child: _buildList(),),
    );
  }
  

  void toCpuBrowseScreen(BuildContext context) {
    // Navigator.push(context, CupertinoPageRoute(builder: (context) => CpuListScreen()));
    Navigator.push(context, MaterialPageRoute(builder: (context) => CpuListScreen())); 
  }

  Widget _buildList() => ListView(
    children: <Widget>[
      _tile('Processor', 'Brain of the computer', Icons.border_all, toCpuBrowseScreen),
      _tile('RAM', 'Short term memory', Icons.border_all, toCpuBrowseScreen),
      _tile('GPU', 'Pushes the pixels into the screen', Icons.border_all, toCpuBrowseScreen),
      _tile('Storage', 'Place to store all your virtual stuff', Icons.border_all, toCpuBrowseScreen),
    ],
  );

  ListTile _tile(String title, String subtitle, IconData icon, Function navFunc) => ListTile(
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
    onTap:  () {showAlertDialog(context);} ,
  );
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { Navigator.of(context).pop(); },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Error"),
    content: Text("No products from this category found"),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}