import 'package:flutter/material.dart';
//import 'package:flutter_course/W6/S2/EXERCISE-1/ex_1_start.dart';

class Temperature extends StatefulWidget {
  const Temperature({super.key});

  @override
  State<Temperature> createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {

  final TextEditingController inputText = TextEditingController();
  //initail is empty string
  String fahrenheit ="";
  
  void converter(){
    setState(() {
      //checking input text is empty or not
      if(inputText.text.isNotEmpty){
        double temperatureInDegree = double.parse(inputText.text);
        double fahrenheit_ = (temperatureInDegree * 9/5) + 32;
        fahrenheit = fahrenheit_.toString();
      }else{
        fahrenheit = "";
      }
    });
  }

  final BoxDecoration textDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
  );

  final InputDecoration inputDecoration = InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white, width: 1.0),
        borderRadius: BorderRadius.circular(12),
      ),
      hintText: 'Enter a temperature',
      hintStyle: const TextStyle(color: Colors.white));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.thermostat_outlined,
              size: 120,
              color: Colors.white,
            ),
            const Center(
              child: Text(
                "Converter",
                style: TextStyle(color: Colors.white, fontSize: 45),
              ),
            ),
            const SizedBox(height: 50),
            const Text("Temperature in Degrees:"),
            const SizedBox(height: 10),
            TextField(
              //supply input text
                controller: inputText,
                decoration: inputDecoration,
                style: const TextStyle(color: Colors.white),
                //handle submit 
                onSubmitted: (value) => converter(),
            ),
            const SizedBox(height: 30),
            const Text("Temperature in Fahrenheit:"),
            const SizedBox(height: 10),
            Container(
                padding: const EdgeInsets.all(10),
                decoration: textDecoration,
                child:Text(
                  fahrenheit.isNotEmpty ? fahrenheit : "Please input your value of temperature",
                ))
          ],
        )),
      ),
    );
  }
}

void main(List<String> args) {
 runApp(
  const MaterialApp(
    home: Temperature(),
  )
 ); 
}