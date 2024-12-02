import 'package:flutter/material.dart';
import 'package:flutter_course/W8/S1/models/expense.dart';
import 'package:flutter_course/W8/S1/screen/expense_item.dart';

class ExpenseList extends StatelessWidget{

  const ExpenseList({super.key,required this.expenses});

  final List<Expense> expenses ;

  @override
  Widget build(BuildContext context){
     return Padding(
      padding: const EdgeInsets.all(2),
      child: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) => ExpensesItem(expense: expenses[index]),
      ),
    );
  }
}