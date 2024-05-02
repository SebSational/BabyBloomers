import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:babybloomers/screens/home.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.amberAccent.shade200,
        color: Colors.amberAccent.shade400,
        animationDuration: const Duration(milliseconds:300),
        items: const [


          Icon(Icons.home,color: Colors.white,  size: 40),

        ],
          index: index,
          onTap: (selectedIndex){
    setState(() {
    index = selectedIndex;
    });
    },

    ),
    body: Container(
    color: Colors.white,
    width: double.infinity,
    height: double.infinity,
    alignment: Alignment.center,
    child: getSelectedWidget(index: index)
    ),
    );

  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget =const Home();
        break;
      default:
        widget = const Home();
        break;
    }
    return widget;
  }
}

