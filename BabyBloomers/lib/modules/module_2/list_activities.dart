import 'package:flutter/material.dart';
import 'package:babybloomers/modules/module_2/activities/activitty_1.dart';
import 'package:babybloomers/modules/module_2/activities/activity_2.dart';
import 'package:babybloomers/modules/module_2/activities/activity_3.dart';
import 'package:babybloomers/modules/module_2/activities/activity_4.dart';
import 'package:babybloomers/modules/module_2/activities/activity_5.dart';

class ListActivities extends StatefulWidget {
  const ListActivities({super.key});

  @override
  ListActivitiesState createState() {
    return ListActivitiesState();
  }
}

class ListActivitiesState extends State<ListActivities> {
  var correoController = TextEditingController();
  var contrasennaController = TextEditingController();
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
                        Container(
                          color: Colors.white,
                          width: double.infinity,
                          height: 200,
                          alignment: Alignment.topCenter,

                          child: const Icon(Icons.list_alt_rounded, size: 200, color: Colors.amber,),
    ),
                        const Divider(
                          height: 30,
                          color: Colors.black,
                        ),


                           Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(100),
    gradient: const LinearGradient(
    colors: [Colors.orange, Colors.yellow],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft),
    ),
    child: MaterialButton(
    onPressed: () async {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => const Activity1(),
    ),
    );

    },
    child: const Text(
    "¡HORA DE LEER!",
    style: TextStyle(
    fontSize: 15,
    color: Colors.black,
    ),
    ),
    ),


    ),
    const SizedBox(
    height: 10,
    ),



    Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(100),
    gradient:  LinearGradient(
    colors: [Colors.purpleAccent.shade700, Colors.purple.shade50],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft),
    ),
    child: MaterialButton(
    onPressed: () async {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Activity2(),
        ),
      );

    },
    child: const Text(
    "KARAOKE",
    style: TextStyle(
    fontSize: 15,
    color: Colors.black,
    ),
    ),
    ),


    ),
    const SizedBox(
    height: 10,
    ),

    Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(100),
    gradient: const LinearGradient(
    colors: [Colors.orange, Colors.yellow],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft),
    ),
    child: MaterialButton(
    onPressed: () async {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Activity3(),
        ),
      );

    },
    child: const Text(
    "IMITAR",
    style: TextStyle(
    fontSize: 15,
    color: Colors.black,
    ),
    ),
    ),


    ),
    const SizedBox(
    height: 10,
    ),

    Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(100),
    gradient: LinearGradient(
    colors: [Colors.purpleAccent.shade700, Colors.purple.shade50],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft),
    ),
    child: MaterialButton(
    onPressed: () async {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Activity4(),
        ),
      );

    },
    child: const Text(
    "LA PISCINA DE LOS OBJETOS",
    style: TextStyle(
    fontSize: 15,
    color: Colors.black,
    ),
    ),
    ),


    ),
    const SizedBox(
    height: 10,
    ),

    Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(100),
    gradient: const LinearGradient(
    colors: [Colors.orange, Colors.yellow],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft),
    ),
    child: MaterialButton(
    onPressed: () async {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Activity5(),
        ),
      );

    },
    child: const Text(
    "ESCOGE LO QUE TE DIGO ",
    style: TextStyle(
    fontSize: 15,
    color: Colors.black,
    ),
    ),
    ),


    ),
                        const Divider(
                          height: 30,
                          color: Colors.black,
                        ),



    ],


    ),

    ),
    ),
    ),
      ),
    );
  }

}