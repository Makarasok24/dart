import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: const Center(
          child: Column(
            children: [
              ChangeBackground(),
              SizedBox(height: 20,),
              ChangeBackground(),
              SizedBox(height: 20,),
              ChangeBackground(),
              SizedBox(height: 20,),
              ChangeBackground()
            ],
          ),
        ),
      ),
    ));

class ChangeBackground extends StatefulWidget {
  const ChangeBackground({
    super.key,
  });

  @override
  State<ChangeBackground> createState() => _ChangeBackgroundState();

}

class _ChangeBackgroundState extends State<ChangeBackground> {

  bool isSelected = false;
  String? text;
  Color? color;
  void isSelect(){
    setState(() {
      isSelected = !isSelected;
    });
  }

  String get getText{
    return isSelected ? text = "Selected" : text = "Not Selected";
  }

  get getTextColor{
    return isSelected ? color = Colors.white : color = Colors.black;
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: 400,
          height: 100,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isSelected ? Colors.blue[500] : Colors.blue[50]
            ),
              onPressed: () => {
                isSelect()
              },
              child: Center(
                child: Text(
                  getText,
                  style: TextStyle(
                    color: getTextColor
                  ),
                ),
              )),
        );
  }
}
