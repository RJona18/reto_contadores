import 'package:flutter/material.dart';
import 'package:my_proyecto_dos/constants.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num1 = 0;
  int num2 = 0;
  int num3 = 0;
  int num4 = 0;
  int num5 = 0;
  int total = 0;

  void incrementartotal() {
    total++;
  }

  void Resetotal() {
   num1 = 0;
   num2 = 0;
   num3 = 0;
   num4 = 0;
   num5 = 0;
   total = 0;
  }

  int incremantarEnuno(int variable) {
    return variable + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            Resetotal();
            setState(() {
              
            });
        },
        child: Text(
          "Reset",
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Reto de Diseño"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                total.toString(),
                style: titulos,
              ),
            ],
          ),
          Divider(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "Contador 1",
                      style: titulos,
                    ),
                    Text(
                      num1.toString(),
                      style: titulos,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        num1 = incremantarEnuno(num1);
                        incrementartotal();
                        setState(() {});
                      },
                      child: Text("ADD"),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Contador 2",
                      style: titulos,
                    ),
                    Text(
                      num2.toString(),
                      style: titulos,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        num2 = incremantarEnuno(num2);
                        incrementartotal();
                        setState(() {});
                      },
                      child: Text("ADD"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "Contador 3",
                      style: titulos,
                    ),
                    Text(
                      num3.toString(),
                      style: titulos,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        num3 = incremantarEnuno(num3);
                        incrementartotal();
                        setState(() {});
                      },
                      child: Text("ADD"),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Contador 4",
                      style: titulos,
                    ),
                    Text(
                      num4.toString(),
                      style: titulos,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        num4 = incremantarEnuno(num4);
                        incrementartotal();
                        setState(() {});
                      },
                      child: Text("ADD"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "Contador 5",
                      style: titulos,
                    ),
                    Text(
                      num5.toString(),
                      style: titulos,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        num5 = incremantarEnuno(num5);
                        incrementartotal();
                        setState(() {});
                      },
                      child: Text("ADD"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
