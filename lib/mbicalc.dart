import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(mbicalc());
}

class mbicalc extends StatefulWidget {
  mbicalc({super.key});

  @override
  State<mbicalc> createState() => mbicalcState();
}

class mbicalcState extends State<mbicalc> {
  double wieghtval = 50;
  double valslider = 120;
  double age = 20;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: const Text(
              "body mass index",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child:InkWell(

                      onTap: () {
                        // print("d");
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(7)),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.female,
                              size: 50,
                            ),
                            Text(
                              "female",
                              style: TextStyle(
                                  fontSize: 46, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      // print("d");
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(7)),
                      child: const Expanded(
                        child: Column(
                          children: [
                            Icon(
                              Icons.male,
                              size: 50,
                            ),
                            Text(
                              "male",
                              style: TextStyle(
                                  fontSize: 46, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ))
                ],
              ),
              Expanded(
                flex: 4,
                child: Container(
                    padding: const EdgeInsets.all(80),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(7)),
                    child: Column(children: [
                      const Text(
                        "HIEGHT",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.ideographic,
                          children: [
                            Text(
                              "${valslider.round()}",
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text("cm",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal)),
                          ]),
                      Slider(
                          min: 80.0,
                          max: 200.0,
                          value: valslider,
                          onChanged: (val) {
                            setState(() {
                              valslider = val;
                            });
                          })
                    ])),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(7)),
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              const Text(
                                "wieght",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "$wieghtval",
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          wieghtval--;
                                        });
                                      },
                                      icon: const Icon(Icons.remove)),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          wieghtval++;
                                        });
                                      },
                                      icon: const Icon(Icons.add))
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(7)),
                      child: Column(
                        children: [
                          const Text(
                            "age",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "$age",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  icon: const Icon(Icons.remove)),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: const Icon(Icons.add))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10)),
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("${(valslider / pow(wieghtval, 2)).toStringAsFixed(2)}"),
                              // content: ,
                            );
                          });
                    },
                    color: Colors.blueGrey,
                    padding: const EdgeInsets.all(8),
                    child: const Text("calculate"),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
