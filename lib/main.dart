import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:carousel_slider/carousel_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hairil Humsani',
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData.dark(),
      home: const MyHomePage(title: 'Welcome To My Flutter Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: CarouselSlider(
                items: [
              Hero(
                  tag: '',
                  child: Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/12328370/pexels-photo-12328370.jpeg?cs=srgb&dl=pexels-julian-bracero-12328370.jpg&fm=jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
            ],
                options: CarouselOptions(
                    height: 500,
                    enlargeCenterPage: true,
                    aspectRatio: 9 / 16,
                    enableInfiniteScroll: true,
                    viewportFraction: 1))),
        appBar: AppBar(
          title: Text(widget.title),
        ));
  }
}
