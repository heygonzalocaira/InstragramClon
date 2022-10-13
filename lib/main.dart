import 'package:flutter/material.dart';
import 'package:instragram_clon/data/data.dart';
import 'package:instragram_clon/widgets/post_item.dart';
import 'package:instragram_clon/widgets/story.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InstagramHome(),
    );
  }
}

class InstagramHome extends StatefulWidget {
  const InstagramHome({super.key});

  @override
  State<InstagramHome> createState() => _InstagramHomeState();
}

class _InstagramHomeState extends State<InstagramHome> {
  int _index = 0;

  void onTapIndex(int index) {
    setState(() {
      _index = index;
    });
  }

  final listPages = const [
    InstragramHome(),
    SecondPAge(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Instragram",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 8, top: 8),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, top: 8),
            child: Icon(
              Icons.comment,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 5),
        ],
      ),
      body: listPages.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: "",
          ),
        ],
        currentIndex: _index,
        onTap: onTapIndex,
      ),
    );
  }
}

class InstragramHome extends StatelessWidget {
  const InstragramHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: stories
                  .map((story) => Story(img: story.img, name: story.name))
                  .toList()),
        ),
        Column(
          children: stories
              .map((item) => PostItem(url: item.img, userName: item.name))
              .toList(),
        )
      ],
    );
  }
}

class SecondPAge extends StatelessWidget {
  const SecondPAge({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Segunda pantalla"));
  }
}
