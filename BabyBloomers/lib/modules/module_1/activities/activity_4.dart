import 'package:flutter/material.dart';
import 'package:budgetmaster/modules/module_1/activities/video.dart';

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
                    Image.asset('assets/images/m1a4t.jpg', width: 250),

                    Image.asset('assets/images/m1a41.jpg', width: 180), //module 1, activity 4

                    Image.asset('assets/images/m1a43.jpg', width: 250),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.amberAccent.shade400,
                      ),
                      child: MaterialButton(
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Video(),
                            ),
                          );

                        },
                        child: const Text(
                          "VIDEO",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                              color: Colors.black,
                              fontFamily: "Roboto"

                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}