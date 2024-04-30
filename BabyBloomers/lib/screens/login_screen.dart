import 'package:flutter/material.dart';
import 'package:budgetmaster/screens/hi_pissitas.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  var correoController = TextEditingController();
  var contrasennaController = TextEditingController();


  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Image.asset('assets/images/im2.jpg'),


              const SizedBox(
                height: 25,
              ),
            
              const SizedBox(
                height: 60,
                width: double.infinity,
                child:  Card(

                  child: SizedBox(
                    width: 250,
                    height: 100,

                    child: Column(
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "¡Nos alegra verte por aquí!",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Colors.cyan,

                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],

                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
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
                        builder: (context) => const InformationScreen(),
                      ),
                    );

                  },
                  child: const Text(
                    "Ingresa",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                      fontSize: 25,
                      color: Colors.black,
                      fontFamily: "Roboto"
                    ),
                  ),
                ),
              
              ),

              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 30,
                color: Colors.black,
              ),
              const SizedBox(
                height: 1,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Text(
                        "Al continuar estás aceptando los términos y condiciones de uso.",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      )),

                ],
              ),
              const SizedBox(
                height: 1,
              ),

              const Text(
                " Leer sobre términos y condiciones",
                style: TextStyle(
                  fontSize: 12,
                  decoration:TextDecoration.underline ,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
