import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: "new shoes",
      amount: 99.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Groceries",
      amount: 500,
      date: DateTime.now(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                elevation: 5,
                child: Text('Chart!!'),
              ),
            ),
            Column(
              children: [
                ...transactions.map((tx) {
                  return Card(
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            tx.amount.toString(),
                          ),
                        ),
                        Column(
                          children: [
                            Text(tx.title),
                            Text(
                              tx.date.toString(),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }).toList(),
              ],
            )
          ],
        ));
  }
}
