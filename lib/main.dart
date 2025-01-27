import 'package:cookie_clicker/todo.dart';
import 'package:flutter/material.dart';

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
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});


  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
class MyLoginPageState extends State<MyLoginPage> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Login"),
          const TextField(
            decoration: InputDecoration(label: Text("Username")),
          ),
          const TextField(
            decoration: InputDecoration(label: Text("Password")),
            obscureText: true,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyTodoList()));
              },
              child: const Text("Login"))
        ],
      ),
    );
  }
  
}
bool checkLogin(String username, String password){
  if(username == "theis2" && password == "taisErDårligt6!"){
    return true;
  }
  return false;
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
    return MyLoginPage();
  }
}
