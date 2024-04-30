import 'package:flutter/material.dart';
import 'package:budgetmaster/modules/module_1/module_1.dart';
import 'package:budgetmaster/modules/module_2/module_2.dart';
import 'package:budgetmaster/modules/module_3/module_3.dart';
import 'package:budgetmaster/modules/module_4/module_4.dart';
import 'package:budgetmaster/modules/module_5/module_5.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  color: Colors.white,
                  width: double.infinity,

                  height: 260,
                  alignment: Alignment.topCenter,

                  child: Image.asset('assets/images/modules.jpg'),

                ),
                const SizedBox(
                  height: 25,
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
                          builder: (context) => const Module1(),
                        ),
                      );

                    },
                    child: const Text(
                      "15 MESES",
                      style: TextStyle(
                        fontSize: 25,
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
                          builder: (context) => const Module2(),
                        ),
                      );

                    },
                    child: const Text(
                      "18 MESES",
                      style: TextStyle(
                        fontSize: 25,
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
                          builder: (context) => const Module3(),
                        ),
                      );


                    },
                    child: const Text(
                      "21 a 24 MESES",
                      style: TextStyle(
                        fontSize: 25,
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
                          builder: (context) => const Module4(),
                        ),
                      );


                    },
                    child: const Text(
                      "24 MESES",
                      style: TextStyle(
                        fontSize: 25,
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
                          builder: (context) => const Module5(),
                        ),
                      );


                    },
                    child: const Text(
                      "36 MESES ",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),


                ),


              ],


            ),

        ),
      ),
    );
  }


}