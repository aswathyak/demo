import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key, 
 
  }) : super(key: key);
 
  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize : MainAxisSize.min,
        children : [
          ElevatedButton(
              style: ButtonStyle(
                   foregroundColor : MaterialStateProperty.all<Color>(Colors.white),
                   backgroundColor:  MaterialStateProperty.all<Color>(Colors.green),
                  // backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  //   (Set<MaterialState> states){
                  //     if(states.contains(MaterialState.pressed)) return Colors.white;
                  //     return Colors.indigo;
                  //   }
                  // ),
                  // textStyle: MaterialStateProperty.resolveWith((states) {
                  //   Color textColor = states.contains(MaterialState.disabled) ? Colors.black : Colors.indigo;
                  //   return TextStyle(fontSize: 12, color: textColor);
                  // }),
                  shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius : BorderRadius.circular(18.0),
                    ),
                    
                  ),
                ),
          onPressed: (){
           var snackBar = const SnackBar(content: Text('Hi Jose you are available in Morning'), duration: Duration(seconds: 2, milliseconds: 500 ));
           ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text("Morning",
          ),
          ),
           ElevatedButton(
              style: ButtonStyle(
                   foregroundColor : MaterialStateProperty.all<Color>(Colors.white),
                   backgroundColor:  MaterialStateProperty.all<Color>(Colors.green),
                  // backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  //   (Set<MaterialState> states){
                  //     if(states.contains(MaterialState.pressed)) return Colors.white;
                  //     return Colors.indigo;
                  //   }
                  // ),
                  // textStyle: MaterialStateProperty.resolveWith((states) {
                  //   Color textColor = states.contains(MaterialState.disabled) ? Colors.black : Colors.indigo;
                  //   return TextStyle(fontSize: 12, color: textColor);
                  // }),
                  shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius : BorderRadius.circular(18.0),
                    ),
                    
                  ),
                ),
          onPressed: (){
            var snackBar = const SnackBar(content: Text('Hi Jose you are available in Afternoon'),duration: Duration(seconds: 2, milliseconds: 500), );
           ScaffoldMessenger.of(context).showSnackBar(snackBar,);
          },
          child: const Text("Afternoon",
          ),
          ),
           ElevatedButton(
              style: ButtonStyle(
                   foregroundColor : MaterialStateProperty.all<Color>(Colors.white),
                   backgroundColor:  MaterialStateProperty.all<Color>(Colors.green),
                  // backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  //   (Set<MaterialState> states){
                  //     if(states.contains(MaterialState.pressed)) return Colors.white;
                  //     return Colors.indigo;
                  //   }
                  // ),
                  // textStyle: MaterialStateProperty.resolveWith((states) {
                  //   Color textColor = states.contains(MaterialState.disabled) ? Colors.black : Colors.indigo;
                  //   return TextStyle(fontSize: 12, color: textColor);
                  // }),
                  shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius : BorderRadius.circular(18.0),
                    ),
                    
                  ),
                ),
          onPressed: (){
            var snackBar = const SnackBar(content: Text('Hi Jose you are available in Evenning'), duration: Duration(seconds: 2, milliseconds: 500) );
           ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text("Evenning",
          ),
          ),
        ]
      ),
    );
  }
 
}