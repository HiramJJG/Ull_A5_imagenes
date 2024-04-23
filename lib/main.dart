import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Mostrar Imagenes Jurado Garcia '),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Color(0xffffffff)),
        ),
        backgroundColor: Color(0xff07b507),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 250.0,
            width: 450.0,
            child: Image.asset(
              "assets/serpiente.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 250.0,
            width: 450.0,
            child: Image.network(
              "https://concepto.de/wp-content/uploads/2020/04/tortuga-e1588195737163-800x400.jpg",
              fit: BoxFit.cover,
            ),
          )
        ],
      )),
    );
  }
}
