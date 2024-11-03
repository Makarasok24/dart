
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: const Text(
            "Custom buttons"
          ),
          backgroundColor: Colors.pink[50],
        ),
        body: const Padding(
          padding:EdgeInsets.all(20),
          child: Column(
            children: [
              CustomButton(
                label: "Submit", 
                icon: Icons.check,
              ),
              SizedBox(height: 10,),
              CustomButton(
                label: "Time", 
                icon: Icons.watch_later_outlined,
                isPosistionLeft: false,
                buttonTypes: ButtonTypes.secondary,
              ),
              SizedBox(height: 10,),
              CustomButton(
                label: "Account", 
                icon: Icons.account_tree,
                isPosistionLeft: false,
                buttonTypes: ButtonTypes.disabled,
              ),
            ],
          ),
        )
      )
    )
  );
}

enum ButtonTypes {
  primary,
  secondary,
  disabled
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isPosistionLeft;
  final ButtonTypes buttonTypes;

  const CustomButton({
    required this.label,
    required this.icon,
    this.isPosistionLeft = true,
    this.buttonTypes = ButtonTypes.primary,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        color: buttonTypes == ButtonTypes.primary ? Colors.blue 
              : buttonTypes == ButtonTypes.secondary ? Colors.green 
              : Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(isPosistionLeft)...[
              Icon(
                icon
              ),
            ],
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  label
              ),
            ),
            if(!isPosistionLeft)...[
              Icon(
                icon
              )
            ]
          ],
        ),
      ),
    );
  }
}

