import 'package:flutter/material.dart';
import 'package:infonews/recherche.dart';

import 'actulaites.dart';
import 'categorie.dart';

void main() {
  runApp(  const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex =0;
  setCurrentIndex(int index){
    setState(() {
      _currentIndex= index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title:[
            Text("A la une"),
            Text("Articles"),
            Text("Recherche"),
          ] [_currentIndex]
        ),
        body: [
           Actualites(),
           Categories(),
           Recerhches()
        ]
        [_currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index)=> setCurrentIndex(index),
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          elevation: 15
          ,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.info),
                label: "Actualités"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: "Categories"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Recherche"
            ),
          ],
        ),

      ),

    );

  }
}




