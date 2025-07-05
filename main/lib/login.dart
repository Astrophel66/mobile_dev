import 'package:flutter/material.dart';
import 'package:flutter_app/dartf_iles/homee.dart' show Home;
import 'package:flutter_app/dartf_iles/profile.dart' show Profile;
import 'package:flutter_app/dartf_iles/search.dart' show Search;
import 'package:flutter_app/dartf_iles/settings.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});
  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  List page = [Home(), Search(), Profile(), Settings()];
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple ),
 drawer:Drawer(backgroundColor: Colors.deepPurpleAccent ,
child : ListView(
        children: [
          ListTile(
            title: Text('menu one'),
            leading: Icon(Icons.menu),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text('menu two'),
            leading: Icon(Icons.menu),
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      

      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
          BottomNavigationBarItem(label: 'setting', icon: Icon(Icons.settings)),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: page[selectedIndex],
    );
  }
}
