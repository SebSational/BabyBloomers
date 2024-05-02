import 'package:flutter/material.dart';
import 'package:babybloomers/screens/home_page.dart';



// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}


enum SingingCharacter { masculino, femenino}

class MyCustomFormState extends State<MyCustomForm> {
  SingingCharacter? _gender = SingingCharacter.masculino;

  final _formKey = GlobalKey<FormState>();
  var usuarioController = TextEditingController();
  var nombreController = TextEditingController();
  var fechaController = TextEditingController();



  bool isObscure_1 = true;
  bool isObscure_2 = true;

  @override
  Widget build(BuildContext context) {



    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child:  Column(
        children: <Widget>[
          const SizedBox(
            height: 22 ,
          ),
          TextFormField(
            controller: nombreController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelStyle: const TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.black,

              ),
              labelText: "Nombre o apodo",
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 1.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              prefixIcon:  Icon(Icons.account_box, color: Colors.amberAccent.shade400),
            ),

            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor completa este campo';
              }
              return null;

            },

          ),
          const SizedBox(
            height: 12,
          ),

          const SizedBox(
            height: 12,
          ),
      SingleChildScrollView(
        child: TextFormField(
            controller: fechaController,
            keyboardType: TextInputType.datetime,
            onTap: () {
              showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(DateTime.now().year - 100),
                  helpText: "Selecciona tu fecha de nacimiento",
                  cancelText: "Cancelar",
                  confirmText: "Aceptar",
                  lastDate: DateTime(DateTime.now().year + 1))
                  .then((value) => fechaController.text =
              '${value?.day.toString()}/${value?.month.toString()}/${value?.year.toString()}');

            },
            decoration: InputDecoration(
              labelStyle: const TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.black,

              ),
              hintText: ' DD/MM/AAAA',
              labelText: "Fecha de nacimiento",
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 1.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              prefixIcon: const Icon(Icons.cake_sharp, color: Colors.pink  ),
            ),




          ),

          ),

          const SizedBox(
            height: 12,
          ),
          const Text(
            "¿Cuál es tu género?",
            style: TextStyle(
              fontSize: 15,
              //fontWeight: FontWeight.w900,
              color: Colors.black,

            ),
            textAlign: TextAlign.center,
          ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child:   ListTile(
              title: const Text('Masculino', style: TextStyle(
                  fontSize: 10.7,
                  color: Colors.black,

              ),),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.masculino,
                groupValue: _gender,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _gender = value;
                  });
                },
              ),
            ),),

            Expanded(
              flex: 1,
              child: ListTile(
              title: const Text('Femenino',  style: TextStyle(
                fontSize: 11,
                color: Colors.black,

              ),),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.femenino,
                groupValue: _gender,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _gender = value;
                  });
                },
              ),
            ),),

          ],
        ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.amberAccent.shade400,
            ),
            child: MaterialButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                  return;
                }


              },
              child: const Text(
                "SIGUIENTE",
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
    );

  }


  Future<DateTime?> seleccionarFecha() {
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    );
  }



}
