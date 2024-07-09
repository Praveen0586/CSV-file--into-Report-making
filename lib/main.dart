import 'package:flutter/material.dart';

void main() => runApp(myapp());

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       home: Column(
  children: [
   const Text("Hello World"),
    FloatingActionButton(
      onPressed: (){},
    child:const  Icon(Icons.add), // Use built-in Icons class
    ),
  ],
),
);
  }
}