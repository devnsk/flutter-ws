import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ExpenseState();
  }
}

class _ExpenseState extends State<Expenses> {
  final List<Expenses> _registeredExpenses = [
    Expense(title: 'Flutter', amount: 16.5, dateTime: DateTime.now(),category:Category.leisure),
        Expense(title: 'Flutter', amount: 16.5, dateTime: DateTime.now(),category:Category.leisure),


  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      body: Column(
        children: [
          Text('The chart'),
          Text('Expense list'),
        ],
      ),
    );
  }
}
