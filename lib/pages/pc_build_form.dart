import 'package:flutter/material.dart';

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
      ) ,
    );
  }

 

}