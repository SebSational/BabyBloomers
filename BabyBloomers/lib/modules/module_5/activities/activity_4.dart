import 'package:flutter/material.dart';


class Activity4 extends StatefulWidget {
  const Activity4({super.key});

  @override
  Activity4State createState() {
    return Activity4State();
  }
}

class Activity4State extends State<Activity4> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),

        primarySwatch: Colors.purple,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFFFC400),
            centerTitle: true,
          ),
          body:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 1),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset('assets/images/m5a4t.jpg', width: 250),

                    Image.asset('assets/images/m5a41.jpg', width: 180), //module 5, activity 4
                    Image.asset('assets/images/m5a43.jpg', width: 250),
                    Image.asset('assets/images/m5a43.jpg', width: 240),
                    Image.asset('assets/images/m5a44.jpg', width: 240),



                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}