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
              _tile('Corsair Vengeance LPX', '16 GB', Icons.border_all, 20),
              Divider(),
              _tile('\$119', 'From Amazon', Icons.attach_money, 16),
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
              _tile('G. Skill Ripjaws V', '16 GB', Icons.border_all, 20),
              Divider(),
              _tile('\$99', 'From Amazon', Icons.attach_money, 16),
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
              _tile('G. Skill Trident Z RGB', '32 GB', Icons.border_all, 20),
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
              _tile('G. Skill Aegis', '8 GB', Icons.border_all, 20),
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
      _tile('Corsair Vengeance LPX', '16 GB', Icons.border_all, 20),
      _tile('G. Skill Ripjaws V', '16 GB', Icons.border_all, 20),
      _tile('G. Skill Trident Z RGB', '32 GB', Icons.border_all, 20),
      _tile('G. Skill Aegis', '8 GB', Icons.border_all, 20),
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