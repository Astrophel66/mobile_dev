import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding around the body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {}, child: Text('Skip')),
            ),
            Row(
              children: [
                Icon(Icons.directions_car, size: 30.0, color: Colors.red),
                SizedBox(width: 8),
                Text(
                  'luxcar',
                  style: TextStyle(fontSize: 30.0, color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Welcome Back!',
              style: TextStyle(fontSize: 35.0, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              'Sign in to continue your journey',
              style: TextStyle(fontSize: 15.0, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              'phone/email',
              style: TextStyle(fontSize: 10.0, color: Colors.black),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'password',
              style: TextStyle(fontSize: 10.0, color: Colors.black),
            ),
            SizedBox(height: 8),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'forgotten password?',
                style: TextStyle(fontSize: 10.0, color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity, // makes the button full width
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashBoardPage()),
                  ); // Handle sign in logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // rounded corners
                  ),
                ),
                child: Text('Sign In', style: TextStyle(fontSize: 16)),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("or"),
                ),
                Expanded(child: Divider(thickness: 1, color: Colors.grey)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.facebookF,
                  size: 30.0,
                  color: Colors.blue[800],
                ),
                SizedBox(width: 20),
                FaIcon(FontAwesomeIcons.apple, size: 30.0, color: Colors.black),
                SizedBox(width: 20),
                FaIcon(
                  FontAwesomeIcons.threads,
                  size: 30.0,
                  color: Colors.black,
                ),
              ],
            ),
            Spacer(), // Pushes content to the bottom
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                GestureDetector(
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Padding from bottom
          ],
        ),
      ),
    );
  }
}
