
import 'package:demo_ui/ui/components/week.dart';
import 'package:demo_ui/ui/screens/question_page.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
   bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:  const Text(""),
      ),
      body : SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         
          children : [
         const Padding(
            padding:  EdgeInsets.all(16.0),
            child:  Text("Set your weekly hours",
              style : TextStyle(fontSize : 15, fontWeight: FontWeight.bold, color: Colors.black),
              ),
          ),
            //  ListView.separated(
            //   itemBuilder: (itemBuilder),
            //   separatorBuilder: separatorBuilder,
            //   itemCount: 7),
              const  Week(day: 'SUN'),
              const  Week(day: 'MON'),
              const  Week(day: 'TUE'),
              const  Week(day: 'WED'),
              const  Week(day: 'THU'),
              const  Week(day: 'FRI'),
              const  Week(day: 'SAT'),
            
              SizedBox(
              height: size.height /12,
            ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor : MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:  MaterialStateProperty.all<Color>(Colors.green),
                  shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius : BorderRadius.circular(18.0),
                    ),
                    
                  ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const  QuestionPage()));
                },
                child: const Center(
                  child:  Text('Save', style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                 ),
                ),
              ),
          ]
        ),
      ),
      
    
    );
  }
}