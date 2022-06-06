import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    title: "Sedang Belajar",
    home: BuatForm(),
  ));
}

class BuatForm extends StatefulWidget {
  _BuatFormState createState() => _BuatFormState();
}

class _BuatFormState extends State<BuatForm> {
  final _formKey = GlobalKey<FormState>();
  double nilaiSlider = 1;
  bool nilaiCheckBox = false;
  bool nilaiSwitch = true;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Belajar bikin form')),
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: new InputDecoration(
                              hintText: "Contoh : Paijo",
                              labelText: "Nama Anda :",
                              icon: Icon(Icons.people),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ' Nama tidak boleh kosong';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextFormField(
                            obscureText: true,
                            decoration: new InputDecoration(
                              labelText: "Password",
                              icon: Icon(Icons.security),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ' Password tidak boleh kosong bro';
                              }
                              return null;
                            },
                          ),
                        ),
                        RaisedButton(
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.blue,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {}
                          },
                        )
                      ],
                    )))));
  }
}
