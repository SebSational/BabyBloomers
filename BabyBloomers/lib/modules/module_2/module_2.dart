import 'package:flutter/material.dart';
import 'package:budgetmaster/modules/module_2/list_activities.dart';




class Module2 extends StatefulWidget {
  const Module2({super.key});

  @override
  Module2State createState() {
    return Module2State();
  }
}

class Module2State extends State<Module2> {
  var correoController = TextEditingController();
  var contrasennaController = TextEditingController();
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

                     const Text(
                      "18 MESES",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,

                      ),
                      textAlign: TextAlign.center,
                    ),

                    const Text(
                      "(UN AÑO Y SEIS MESES)",
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
                        // clipBehavior is necessary because, without it, the InkWell's animation
                        // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
                        // This comes with a small performance cost, and you should not set [clipBehavior]
                        // unless you need it.
                        child: SizedBox(
                          width: 250,
                          height: 200,

                          child:  SingleChildScrollView(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),

                                Image.asset('assets/images/m21.jpg'), //module2_image1
                                const SizedBox(
                                  height: 5,
                                ),
                                Image.asset('assets/images/m22.jpg'), //module2_image2
                                const SizedBox(
                                  height: 5,
                                ),
                                Image.asset('assets/images/m23.jpg'), //module2_image3
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
