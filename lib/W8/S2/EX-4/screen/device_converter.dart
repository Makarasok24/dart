import 'package:flutter/material.dart';

import 'package:flutter_course/W8/S2/EX-4/model/type_of_money.dart';
 
class DeviceConverter extends StatefulWidget {
  const DeviceConverter({super.key});

  @override
  State<DeviceConverter> createState() => _DeviceConverterState();
}

class _DeviceConverterState extends State<DeviceConverter> {
 
  final BoxDecoration textDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
  );
  final _moneyController = TextEditingController();
  TYPEOFMONEY? _selectTypeOfMoney;
  double amount = 0;

  @override
  void initState() {
    super.initState();
    _moneyController.addListener(onChange);
  }

  void selectTypeOfMoney(TYPEOFMONEY? typeMoney){
    setState(() {
      _selectTypeOfMoney = typeMoney;

    });
    onChange();
  }

  void onChange(){
    setState(() {
      String value = _moneyController.text;
      switch(_selectTypeOfMoney){
        case TYPEOFMONEY.dong:{
          // value = (double.parse(value)*25377.00) as String;
          // value = (amount * 25377.00).toStringAsFixed(2);
          amount = (double.parse(value) * 25377.00);
          break;
        }
        case TYPEOFMONEY.euro:{
          amount = (double.parse(value) * 0.95);
        }
        break;
        case TYPEOFMONEY.reils:{
          amount = (double.parse(value) * 4030);
        }
        break;
        default:
        value = value;
        break;
      }
    
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Icon(
            Icons.money,
            size: 60,
            color: Colors.white,
          ),
          const Center(
            child: Text(
              "Converter",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          const SizedBox(height: 50),
          const Text("Amount in dollars:"),
          const SizedBox(height: 10),

          TextField(
              controller: _moneyController,
              decoration: InputDecoration(
                  prefix: const Text('\$ '),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Enter an amount in dollar',
                  hintStyle: const TextStyle(color: Colors.white)),
              style: const TextStyle(color: Colors.white)),

          const SizedBox(height: 30),
          DropdownButton(
            value: _selectTypeOfMoney,
            items: TYPEOFMONEY.values.map((typeOfMoney){
              return DropdownMenuItem(
                value: typeOfMoney,
                child: Text(typeOfMoney.toString().split('.').last)
              );
            }).toList(), 
            onChanged: selectTypeOfMoney,
          ),
       

          const SizedBox(height: 30),
          const Text("Amount in selected device:"),
          const SizedBox(height: 10),
          Container(
              padding: const EdgeInsets.all(10),
              decoration: textDecoration,
              child:  Text(amount.toStringAsFixed(2)))
        ],
      )),
    );
  }
}
