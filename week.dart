

import 'package:flutter/material.dart';

import 'schedule.dart';

class Week extends StatefulWidget {
  const Week({Key? key,required this.day}) : super(key: key);
  final String day;
  @override
  State<Week> createState() => _WeekState();
}

class _WeekState extends State<Week> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
            children : [
              Checkbox(
              shape: const CircleBorder(),
                 value : isChecked,
          onChanged : (value){
            setState(() => isChecked = value!);
                  
          },
          activeColor : Colors.green,
          checkColor : Colors.white,
              ),
              Text(widget.day,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width:  5,
              ),
               isChecked == true ? const Schedule()
              : const  Text("Unavaliable",  style: TextStyle(color: Colors.black),),
            ],
          );
  }
}

class Day {
  final String day;
 const Day({
    required this.day
});
}