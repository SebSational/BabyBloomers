import 'package:flutter/material.dart';


class Activity2 extends StatefulWidget {
  const Activity2({super.key});

  @override
  Activity2State createState() {
    return Activity2State();
  }
}

class Activity2State extends State<Activity2> {

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
                    Image.asset('assets/images/m4a2t.jpg', width: 150),

                    Image.asset('assets/images/m4a21.jpg', width: 250), //module 4, activity 2
                    Image.asset('assets/images/m4a22.jpg', width: 250),


                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}
