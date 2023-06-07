import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

/*void main() {runApp(const MyApp());} */
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyGPA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const LoginPage(title: 'MyGPA'),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  //const LoginPage({super.key, required this.title});
  const LoginPage({Key? key}) : super(key: key);

  //final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello',
            ),
          ],
        ),
      ),
    );
  }
}
