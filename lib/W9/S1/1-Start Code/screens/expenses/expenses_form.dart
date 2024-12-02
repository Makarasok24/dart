import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../models/expense.dart';

class ExpenseForm extends StatefulWidget {
  const ExpenseForm({super.key, required this.onCreated});

  final Function(Expense) onCreated;

  @override
  State<ExpenseForm> createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  final _titleController = TextEditingController();
  final _valueController = TextEditingController();

  String get title => _titleController.text;

  @override
  void dispose() {
    _titleController.dispose();
    _valueController.dispose();
    super.dispose();
  }

  void onCancel() {
    
    // Close modal
    Navigator.pop(context);
  }

  void onAdd() {
    // 1- Get the values from inputs
    String title = _titleController.text;
    double amount = double.parse(_valueController.text);

    bool isValidTitle = title.isNotEmpty;
    bool isValidAmount = amount>0;

    if(isValidTitle && isValidAmount){
       
      Expense expense = Expense(
        title: title,
        amount: amount,
        date: DateTime.now(),     //  TODO :  For now it s a fake data
        category: Category.food); 
      
        widget.onCreated(expense);
        
        Navigator.pop(context);
    }else{


      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Invalid input'),
          content: Text(
            !isValidTitle ? "Title is not empty" : "Amount must be positve"
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              child: const Text("Okay"),
            ),
          ],
        ),
      );
    }

    // if(title.isNotEmpty){
    //   /  TODO :  For now it s a fake data
    // }else{
      
    // }
    // 2- Create the expense
    // Expense expense = Expense(
    //     title: title,
    //     amount: amount,
    //     date: DateTime.now(),     //  TODO :  For now it s a fake data
    //     category: Category.food); 
    

    // 3- Ask the parent to add the expense
    // widget.onCreated(expense);
   

    // 4- Close modal
    // Navigator.pop(context);
  }

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp('[0-9\-/*+]')),
            ],
            controller: _valueController,
            maxLength: 50,
            decoration: const InputDecoration(
              prefix: Text('\$ '),
              label: Text('Amount'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: onCancel, child: const Text('Cancel')),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: onAdd, child: const Text('Create')),
            ],
          )
        ],
      ),
    );
  }
}
