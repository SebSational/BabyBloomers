import 'package:flutter/material.dart';
import 'package:babybloomers/modules/module_3/list_activities.dart';


class Module3 extends StatefulWidget {
  const Module3({super.key});

  @override
  Module3State createState() {
    return Module3State();
  }
}

class Module3State extends State<Module3> {
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

                     const Text(
                      "21 A 24 MESES",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,

                      ),
                      textAlign: TextAlign.center,
                    ),

                    const Text(
                      "(UN AÑO Y NUEVE MESES A DOS AÑOS)",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,

                      ),
                      textAlign: TextAlign.center,
                    ),

                   const SizedBox(
                      height: 5,
                    ),

                   const Text(
                      "A esta edad su hijo(a) debe realizar lo siguiente de acuerdo a unos niveles:",
                      style: TextStyle(
                        fontSize: 15,
                        //fontWeight: FontWeight.w900,
                        color: Colors.black,

                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 5,
                    ),

                    const Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 25,
                    ),

                    SizedBox(
                      height: 350,
                      width: double.infinity,
                      child:  Card(
                        color: Colors.amberAccent.shade100,
                        child: SizedBox(
                          width: 250,
                          height: 200,

                          child:  SingleChildScrollView(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),

                                Image.asset('assets/images/m31.jpg'), //module1_image1
                                const SizedBox(
                                  height: 5,
                                ),
                                Image.asset('assets/images/m32.jpg'), //module1_image2
                                const SizedBox(
                                  height: 5,
                                ),
                                Image.asset('assets/images/m33.jpg'), //module1_image3
                                const SizedBox(
                                  height: 5,
                                ),

                              ],)
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    const Divider(
                      height: 30,
                      color: Colors.black,
                    ),


                    FloatingActionButton.extended(
                        icon: const Icon(Icons.arrow_forward_rounded),
                        label: const Text("Actividades"),

                        backgroundColor: Colors.purple.shade50,
                        splashColor:Colors.amberAccent.shade400,
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ListActivities(),
                            ),
                          );
                        }),

                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}
