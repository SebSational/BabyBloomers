import 'package:flutter/material.dart';


class Activity3 extends StatefulWidget {
  const Activity3({super.key});

  @override
  Activity3State createState() {
    return Activity3State();
  }
}

class Activity3State extends State<Activity3> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BabyBloomers',
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
                    Image.asset('assets/images/m5a3t.jpg', width: 250),

                    Image.asset('assets/images/m5a31.jpg', width: 150), //module 5, image 3
                    Image.asset('assets/images/m5a32.jpg', width: 250),
                    Image.asset('assets/images/m5a33.jpg', width: 240),
                    Image.asset('assets/images/m5a34.jpg', width: 240),



                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}