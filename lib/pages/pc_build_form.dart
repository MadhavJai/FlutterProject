import 'package:flutter/material.dart';
import 'package:test_app/pages/cpu_list.dart';
import 'package:test_app/pages/gpu_list.dart';
import 'package:test_app/pages/ram_list.dart';
import 'package:test_app/pages/storage_list.dart';
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
      _tile('Processor', 'Brain of the computer', Icons.border_all, 1),
      _tile('Motherboard', 'The base platform', Icons.border_all, 0),
      _tile('RAM', 'Short term memory', Icons.border_all, 2),
      _tile('GPU', 'Pushes the pixels into the screen', Icons.border_all, 3),
      _tile('Storage', 'Place to store all your virtual stuff', Icons.border_all, 4),
    ],
  );

  ListTile _tile(String title, String subtitle, IconData icon, int navCode) => ListTile(
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
    onTap:  () {

      switch(navCode) {
        case 0: {
          showAlertDialog(context);
        }
        break;

        case 1:{
          Navigator.push(context, MaterialPageRoute(builder: (context) => CpuListScreen())); 
        }
        break;

        case 2:{
          Navigator.push(context, MaterialPageRoute(builder: (context) => RamListScreen()));
        }
        break;

        case 3: {
          Navigator.push(context, MaterialPageRoute(builder: (context) => GpuListScreen()));
        }
        break;

        case 4: {
          Navigator.push(context, MaterialPageRoute(builder: (context) => StorageListScreen()));
        }
        break;
      }
    } ,
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