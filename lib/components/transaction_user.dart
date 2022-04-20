import 'dart:math';

import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'transaction_list.dart';
import 'transaction_form.dart';

class TransactionUser extends StatefulWidget {
  TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de luz',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Conta #03',
      value: 1.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Conta #04',
      value: 13.40,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Conta #05',
      value: 11.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Conta #06',
      value: 511.90,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't7',
      title: 'Conta #07',
      value: 0.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't8',
      title: 'Conta #08',
      value: 1.35,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't9',
      title: 'Conta #09',
      value: 60.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't10',
      title: 'Conta #10',
      value: 89.90,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't11',
      title: 'Conta #11',
      value: 24.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't12',
      title: 'Conta #12',
      value: 2.50,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't13',
      title: 'Conta #13',
      value: 50.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't14',
      title: 'Conta #14',
      value: 69.90,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't15',
      title: 'Conta #15',
      value: 999.99,
      date: DateTime.now(),
    )
  ];

  _addTransaction(String title, double value) {
    final newTransation = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransation);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transactions),
        TransactionForm(_addTransaction),
      ],
    );
  }
}
