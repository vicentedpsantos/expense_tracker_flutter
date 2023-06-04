import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Tibia',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: 'Cinema',
        amount: 15.69,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: 'McDonalds',
        amount: 22.00,
        date: DateTime.now(),
        category: Category.food)
  ];

  @override
  Widget build(context) {
    return Scaffold(
        body: Column(children: [
      Text('The chart'),
      Expanded(child: ExpensesList(expenses: _registeredExpenses)),
    ]));
  }
}
