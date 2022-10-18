import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> userTransactions = [
    Transaction(
      id: 't1',
      title: "New Shoes",
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

  void addTransaction(String title, double amount) {
    final tx = Transaction(
        title: title,
        amount: amount,
        id: DateTime.now().toString(),
        date: DateTime.now());

    setState(() {
      userTransactions.add(tx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(addTransaction),
        TransactionList(userTransactions),
      ],
    );
  }
}
