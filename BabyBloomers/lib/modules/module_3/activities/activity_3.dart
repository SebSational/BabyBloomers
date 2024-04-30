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
                    Image.asset('assets/images/m3a3t.jpg', width: 250),

                    Image.asset('assets/images/m3a31.jpg', width: 180), //module 3, activity 3
                    Image.asset('assets/images/m3a32.jpg', width: 250),
                    Image.asset('assets/images/m3a33.jpg', width: 240),


                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}