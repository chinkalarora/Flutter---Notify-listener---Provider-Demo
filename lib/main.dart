import 'package:flutter/material.dart';
import 'package:notifylisteners_example/consumerdemo.dart';
import 'package:notifylisteners_example/futureproviderdemo.dart';
import 'package:notifylisteners_example/my_model.dart';
import 'package:notifylisteners_example/selectordemo.dart';
import 'package:notifylisteners_example/streamproviderdemo.dart';
import 'package:notifylisteners_example/valuenotifierdemo.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Changenotifier
    return ChangeNotifierProvider(
      create: (context) => MyModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: StreamProviderDemo(),
      ),
    );

    //Future Provider
   /* return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home:  Provider<Person>(
          create: (_) => Person(name: 'Yohan', age: 25),
          // The future provider provides a String value,
          // rather than the entire class of Home
          child: FutureProvider<String>(
            create: (context) => Home().fetchAddress,
            // this will be displayed in the meantime
            // until a new value is provided from the future
            initialData: "fetching address...",
            child: const FutureProviderDemo1(),
          ),
        ),);*/

    //Multi Provider
    /*   return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          Provider<Person>(create: (_) => Person(name: 'Yohan', age: 25)),
          FutureProvider<String>(
            create: (context) => Home().fetchAddress,
            initialData: "fetching address...",
          ),
        ],
        child: const FutureProviderDemo1(),
      ),
    );*/

    //Value Notifier - Stream Notifier
    /* return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home:   const MainConsumer(title: 'provider demo',));*/
  }
}
