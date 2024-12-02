import 'package:flutter/material.dart';
import '../../models/expense.dart';
import 'expenses_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses,required this.onRemoveExpence});

  final List<Expense> expenses;
  final Function(Expense) onRemoveExpence;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) => Dismissible(
          onDismissed: (direction) => onRemoveExpence(expenses[index]),
          key: Key(expenses[index].id), 
          child: ExpenseItem(expenses[index])
        ),
      ),
    );
  }
}