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
  DateTime? selectedDate;

  String get title => _titleController.text;
  Category? _selectCategory;
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
        date: selectedDate!,     //  TODO :  For now it s a fake data
        category: _selectCategory!
        
      ); 
      
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
  }

  void isSelectCategory(Category? category){
    setState(() {
      _selectCategory = category;
    });
  }


  void _selectDate() async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1990),
        lastDate: DateTime(2030));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
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
              FilteringTextInputFormatter.allow(RegExp('[0-9-/*+.]')),
            ],
            controller: _valueController,
            maxLength: 50,
            decoration: const InputDecoration(
              prefix: Text('\$ '),
              label: Text('Amount'),
            ),
          ),
          OutlinedButton(
            onPressed: _selectDate, 
            child: Row(
              children: [
              Text(
                selectedDate == null 
                ? "No Date Selected" 
                : "${selectedDate!.toLocal()}".split(' ')[0],),
              const Icon(Icons.date_range_outlined)
            ],)
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownButton<Category>(
                value: _selectCategory,
                items: Category.values.map((categorys){
                  return DropdownMenuItem(
                    value: categorys,
                    child: Text(categorys.toString().split(".").last.toUpperCase())
                  );
                }).toList(),
                onChanged: isSelectCategory
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: onCancel, child: const Text('Cancel')),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(onPressed: onAdd, child: const Text('Create')),
                ],
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
