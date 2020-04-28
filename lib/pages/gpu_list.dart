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
      body: Center(child: _buildCard(),),
    );
  }

  Widget _buildCard() => ListView(

    children: <Widget>[

      SizedBox(
      height: 170,
      child: 
        Card(
          child: Column(
            children: [
              _tile('GeForce RTX 2070 SUPER', '8 GB', Icons.border_all, 20),
              Divider(),
              _tile('\$489', 'From Amazon', Icons.attach_money, 16),
            ],
          ),
        ),
        
      ),

      SizedBox(
      height: 170,
      child: 
        Card(
          child: Column(
            children: [
              _tile('GeForce GTX 1660 SUPER', '6 GB', Icons.border_all, 20),
              Divider(),
              _tile('\$289', 'From Amazon', Icons.attach_money, 16),
            ],
          ),
        ),
        
      ),

      SizedBox(
      height: 170,
      child: 
        Card(
          child: Column(
            children: [
              _tile('Radeon RX 5700 XT', '8 GB', Icons.border_all, 20),
              Divider(),
              _tile('\$599', 'From Amazon', Icons.attach_money, 16),
            ],
          ),
        ),
        
      ),

      SizedBox(
      height: 170,
      child: 
        Card(
          child: Column(
            children: [
              _tile('GeForce RTX 2060 SUPER', '8 GB', Icons.border_all, 20),
              Divider(),
              _tile('\$349', 'From Amazon', Icons.attach_money, 16),
            ],
          ),
        ),
        
      ),

      SizedBox(
      height: 170,
      child: 
        Card(
          child: Column(
            children: [
              _tile('GeForce RTX 2080 Ti', '11 GB', Icons.border_all, 20),
              Divider(),
              _tile('\$899', 'From Amazon', Icons.attach_money, 16),
            ],
          ),
        ),
        
      ),

    ],

  );

  Widget _buildList() => ListView(
    children: <Widget>[
      _tile('GeForce RTX 2070 SUPER', '8 GB', Icons.border_all, 20),
      _tile('GeForce GTX 1660 SUPER', '6 GB', Icons.border_all, 20),
      _tile('Radeon RX 5700 XT', '8 GB', Icons.border_all, 20),
      _tile('GeForce RTX 2060 SUPER', '8 GB', Icons.border_all, 20),
      _tile('GeForce RTX 2080 Ti', '11 GB', Icons.border_all, 20),

    ],
  );

  ListTile _tile(String title, String subtitle, IconData icon, double fontSizeNum) => ListTile(
    title: Text(title, 
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: fontSizeNum,
      )),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );

}