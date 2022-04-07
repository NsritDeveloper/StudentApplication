import 'package:flutter/material.dart';

//CheckBox Widget
class check extends StatefulWidget
{
  @override
  CheckState createState()=> new CheckState();
}

class CheckState extends State<check> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }
    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value){
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

//Radio Button
class RadioButton extends StatefulWidget{
  @override
  RadioState createState() => new RadioState();
}
enum attend {p,a}
class RadioState extends State<RadioButton>
{

  @override
  Widget build(BuildContext context) {

    return Row(
      children: <Widget>[
        ListTile(
          title: const Text("Present"),
          leading: Radio(
            value: "P",
            groupValue: attend,
            onChanged: (value){
              setState(() {
                value=value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text("Absent"),
          leading: Radio(
            value: "P",
            groupValue: attend,
            onChanged: (value){
              setState(() {
                value=value;
              });
            },
          ),
        ),
      ],
    );
  }
}

class InputField extends StatefulWidget{
  @override
  InputState createState() => new InputState();
}

class InputState extends State<InputField>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password',
      ),
    );
  }
}

