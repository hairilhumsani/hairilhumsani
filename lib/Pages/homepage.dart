import 'package:flutter/material.dart';
import 'package:hairilhumsani/Controllers/navbar/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavBar(),
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(title: const Text('PORTFOLIO')),
        body: const HomeBuild());
  }
}

class HomeBuild extends StatelessWidget {
  const HomeBuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[300],
    );
  }
}
