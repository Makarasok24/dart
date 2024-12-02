
import 'package:flutter/material.dart';
import 'package:flutter_course/W8/S1/models/expense.dart';
import 'package:flutter_course/W8/S1/screen/list_expense.dart';

class ExpenseView extends StatefulWidget{
  const ExpenseView({super.key});

  @override
  State<ExpenseView> createState() => _ExpenseViewState();
}

class _ExpenseViewState extends State<ExpenseView> {
  

  int count = 0;
  void add(){
    setState(() {
      print(count++);
    });
  }

  final List<Expense> addExpences = [
    Expense(
      title: "Flutter C,ourse", 
      amounts: Amount(amount: 59.99), 
      date: DateTime.now(), 
      category:ExpenseType.work
    ),
    Expense(
      title: "Ronan The Best Book", 
      amounts: Amount(amount: 15000), 
      date: DateTime.now(), 
      category: ExpenseType.leisure
    )

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: const Text(
          "Ronan-The-Best Expenses App"
        ),
        actions: [
          IconButton(
            onPressed: add, 
            icon: const Icon(
              Icons.add
            ))
        ],
      ),
      body:ExpenseList(expenses: addExpences)
    );
  }
}

