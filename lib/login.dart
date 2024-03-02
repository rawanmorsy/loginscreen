import 'package:flutter/material.dart';
import 'package:loginscreen/mbicalc.dart';

void main() {
  runApp(login());
}

class login extends StatelessWidget {
  login({super.key});

  // This widget is the root of your application.
  GlobalKey<FormState> formstate = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "LOGIN",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Form(
            key: formstate,
            child: Column(children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "LOGIN",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "email",
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  labelText: "email",
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "must not be empty";
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "password",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  labelText: "password",
                ),
                keyboardType: TextInputType.visiblePassword,
                validator: (val) {
                  if (val!.isEmpty) {
                    return "must not be empty";
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                color: Colors.blueAccent,
                onPressed: () {
                  if (formstate.currentState!.validate()) {
                   
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => mbicalc()));
                  }
                },
                child: const Text("LOGIN"),
              )
            ])),
      ),
    );
  }
}
