
import 'package:flutter/material.dart';
import 'package:flutter_course/W8/S1/models/expense.dart';
import 'package:intl/intl.dart';

class ExpensesItem extends StatelessWidget{
  ExpensesItem({super.key,required this.expense});
  final Expense expense;
  final dateAndTime = DateFormat.yMd();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                expense.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                "\$ ${expense.amounts.amount}"
              )
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Icon(expense.category.categoryIcon),
              Text(expense.date.toString())
            ],
            
          )
        ],
      ),
    );
  }
}

