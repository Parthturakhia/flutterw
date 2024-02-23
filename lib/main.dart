import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Hey(),
  ));
}

class Hey extends StatefulWidget {
  const Hey({super.key});

  @override
  State<Hey> createState() => _HeyState();
}

class _HeyState extends State<Hey> {
  bool valueSwitch=true;
  bool valueCheck=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Examples'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          Switch(value: valueSwitch, onChanged: (value){
            setState((){

            });
            valueSwitch=value;

          }),
          Checkbox(value: valueCheck, onChanged: (value){
            setState((){
              print("kb");
            });
            valueCheck=value!;
          }),
        ],
      ),
    );
  }
}


