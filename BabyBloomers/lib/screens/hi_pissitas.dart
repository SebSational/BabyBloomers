import 'package:flutter/material.dart';
import 'package:budgetmaster/widgets/form1.dart';


class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

  @override
  InformationScreenState createState() {
    return InformationScreenState();
  }
}

class InformationScreenState extends State<InformationScreen> {
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 1),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset('assets/images/face.jpg'),

                  const Text(
                    "¡HOLA A TODOS!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,

                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 5,
                  ),

                  const Text(
                    "Muy pronto empezaremos a jugar, pero antes necesitamos una información para conocerte un poco más",
                    style: TextStyle(
                      fontSize: 15,
                      //fontWeight: FontWeight.w900,
                      color: Colors.black,

                    ),
                    textAlign: TextAlign.center,
                  ),


                   const SizedBox(
                    height: 320,
                    width: double.infinity,
                    child:  Card(

                      child: SizedBox(
                        width: 250,
                        height: 200,

                        child:  SingleChildScrollView(
                         child: MyCustomForm(),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: double.infinity,

                    child: MaterialButton(
                      onPressed: () async {

                      },
                      child:  const Row(
                        children: [
                          Icon(
                            Icons.language,
                            color: Colors.black,
                          ),
                          Text(
                            '                       IDIOMA',
                             style: TextStyle(
                              //decoration: TextDecoration.underline,
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: "Roboto"

                          ),
                            textAlign: TextAlign.center,
                          )
                        ],
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
