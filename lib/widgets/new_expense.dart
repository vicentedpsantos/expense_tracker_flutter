import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _amountController = TextEditingController();
  final _titleController = TextEditingController();

  @override
  void dispose() {
    _amountController.dispose();
    _titleController.dispose();

    super.dispose();
  }

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(children: [
        TextField(
          maxLength: 50,
          decoration: InputDecoration(label: Text('Title')),
          controller: _titleController,
        ),
        TextField(
          decoration: InputDecoration(prefixText: '\$ ', label: Text('Amount')),
          controller: _amountController,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
        ),
        Row(children: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel')),
          ElevatedButton(
              onPressed: () {
                print(_titleController.text);
                print(_amountController.text);
              },
              child: Text('Save')),
        ])
      ]),
    );
  }
}
