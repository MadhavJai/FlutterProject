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
              _tile('Seagate Barracuda', '2 TB', Icons.border_all, 20),
              Divider(),
              _tile('\$139', 'From Amazon', Icons.attach_money, 16),
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
              _tile('Samsung 970 Evo', '500 GB', Icons.border_all, 20),
              Divider(),
              _tile('\$189', 'From Amazon', Icons.attach_money, 16),
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
              _tile('Crucial P1', '1 TB', Icons.border_all, 20),
              Divider(),
              _tile('\$189', 'From Amazon', Icons.attach_money, 16),
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
              _tile('Western Digital Blue', '1 TB', Icons.border_all, 20),
              Divider(),
              _tile('\$79', 'From Amazon', Icons.attach_money, 16),
            ],
          ),
        ),
        
      ),

    ],

  );

  Widget _buildList() => ListView(
    children: <Widget>[
      _tile('Seagate Barracuda', '2 TB', Icons.border_all, 20),
      _tile('Samsung 970 Evo', '500 GB', Icons.border_all, 20),
      _tile('Crucial P1', '1 TB', Icons.border_all, 20),
      _tile('Western Digital Blue', '1 TB', Icons.border_all, 20),

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