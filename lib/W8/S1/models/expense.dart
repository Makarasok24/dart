import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
const Uuid uuid = Uuid();

class Expense{
  final String id;
  final String title;
  final Amount amounts;
  final DateTime date;
  final ExpenseType category;

  Expense({required this.title, required this.amounts,required this.date,required this.category}):id = uuid.v4();

} 

class Amount{
  double amount;
  Amount({required this.amount});
}

enum ExpenseType {
  food(Icons.food_bank_outlined),
  travel(Icons.card_travel_rounded),
  leisure(Icons.movie_creation_outlined),
  work(Icons.work_outline_outlined);

  final IconData categoryIcon;
  const ExpenseType(this.categoryIcon);

}