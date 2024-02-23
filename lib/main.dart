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
  double valueSlider1=50;
  double valueSlider2=50;
  double valueSlider3=50;

  Color clr=Colors.white;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr,
      appBar: AppBar(
        title: Text('Examples'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          Switch(value: valueSwitch, onChanged: (value){
            setState((){
              if(valueSwitch==true)
                {
                  valueSwitch=false;
                }
              else{
                valueSwitch=true;
              }
            });
            valueSwitch=value;

          }),
          Checkbox(value: valueCheck, onChanged: (value){
            setState((){
              if(valueSwitch==true)
              {
                clr=Colors.green;
                clr=Colors.blue;
              }
              else
              {
                clr=Colors.white;
              }
            });
            valueCheck=value!;
          }),
          Slider(value: valueSlider1, onChanged: (value){
            setState(() {
              if(valueSwitch==true)
                {
                  clr=Color.fromRGBO(valueSlider1.toInt(),
                      valueSlider2.toInt(),
                      valueSlider3.toInt(), 1.0);
                }
              else{
                  clr=Colors.white;
              }
            });
            valueSlider1=value;


          } , min: 0.0, max: 100.0,),
          Slider(value: valueSlider2, onChanged: (value){
            setState(() {
              if(valueSwitch==true)
              {
                clr=Color.fromRGBO(valueSlider1.toInt(),
                    valueSlider2.toInt(),
                    valueSlider3.toInt(), 1.0);
              }
              else{
                clr=Colors.white;
              }
            });
            valueSlider2=value;

          } , min: 0.0, max: 100.0,),
          Slider(value: valueSlider3, onChanged: (value){
            setState(() {
              if(valueSwitch==true)
              {
                clr=Color.fromRGBO(valueSlider1.toInt(),
                    valueSlider2.toInt(),
                    valueSlider3.toInt(), 1.0);
              }
              else{
                clr=Colors.white;
              }
            });
            valueSlider3=value;

          } , min: 0.0, max: 100.0,),
        ],
      ),
    );
  }
}


