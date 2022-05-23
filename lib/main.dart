import 'package:flutter/material.dart';
import './transaction.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  final List<Transaction>transaction=[
    Transaction(id: 'FT1', title: 'Bag', amount: 100.25, date:DateTime.now()),
    Transaction(id: 'FT1', title: 'food', amount: 78.25, date:DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text("New App"),
        centerTitle: true
        ,
      ),

      body: Column(children:  [

       const Card(

          child: Text("Chart"),
        ),
        const Card(
          child: Text("Transactions"),
        ),
          Column(
              children:transaction.map((ft) {
                return Card(
                child: Row(
                  children: [
                    Container(
                      child: Text(ft.amount.toString()),
                    ),
                    Column(
                      children: [

                        Text(ft.title),
                        Text(ft.date.toString())

                      ],
                    )
                 ],
               ),
            );}).toList()
          ),
        ],
      ),
    );
  }
}
