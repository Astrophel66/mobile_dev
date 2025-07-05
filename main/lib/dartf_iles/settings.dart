import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool showHide = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                // Toggle the visibility of the Text widget
                //showHide = !showHide;
                showHide = true;
                fetchData();
              });
            },
            child: Text('fetch data'),
          ),

          Visibility(visible: showHide, child: Text('Show or hide me')),
        ],
      ),
    );
  }
  
  void fetchData() async {

final response= await http.get(
  Uri.parse("https://jsonplaceholder.typicode.com/posts/1"),
  if(res.statusCode==200){
    var result =jsonDecode(res.body)as Map<String, dynamic>;
    print("Result_$result"); 

  }
  else{
    print("Error fetching data");
  }
  );
  }
}
