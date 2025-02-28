// import 'package:flutter/material.dart';
// class scr1 extends StatefulWidget {
//   const scr1({super.key});
//
//   @override
//   State<scr1> createState() => _scr1State();
// }
//
// class _scr1State extends State<scr1> {
//   Color buttonColor = Colors.white;
//   Color buttonColor1 = Colors.white;
//   Color buttonColor2 = Colors.white;
//   Color buttonColor3 = Colors.white;
//   Color buttonColor4 = Colors.white;
//   Color buttonColor5 = Colors.white;
//   Color buttonColor6 = Colors.white;
//   Color buttonColor7 = Colors.white;
//
//
//   void _changeColor() {
//     setState(() {
//
//      buttonColor = buttonColor == Colors.orange ? Colors.white : Colors.orange;
//     });
//   }
//   void _changeColor1() {
//     setState(() {
//
//       buttonColor1 = buttonColor1 == Colors.orange ? Colors.white : Colors.orange;
//     });
//   }
//   void _changeColor2() {
//     setState(() {
//
//       buttonColor2 = buttonColor2 == Colors.orange ? Colors.white : Colors.orange;
//     });
//   }
//   void _changeColor3() {
//     setState(() {
//
//       buttonColor3 = buttonColor3 == Colors.orange ? Colors.white : Colors.orange;
//     });
//   }
//   void _changeColor4() {
//     setState(() {
//
//       buttonColor4 = buttonColor4 == Colors.orange ? Colors.white : Colors.orange;
//     });
//   }
//   void _changeColor5() {
//     setState(() {
//
//       buttonColor5 = buttonColor5 == Colors.orange ? Colors.white : Colors.orange;
//     });
//   }
//   void _changeColor6() {
//     setState(() {
//
//       buttonColor6 = buttonColor6 == Colors.orange ? Colors.white : Colors.orange;
//     });
//   }
//   void _changeColor7() {
//     setState(() {
//
//       buttonColor7 = buttonColor7 == Colors.orange ? Colors.white : Colors.orange;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.arrow_back_outlined),
//         title: Text("Allergies",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
//         actions: [
//           Text("Next",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrange),)
//         ],
//       ),
//       body: Column(
//         children: [
//           SizedBox(height: 30),
//           Center(child: Text("Do you have any of these common allergies?")),
//           SizedBox(height: 50,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(style: ElevatedButton.styleFrom(
//                   foregroundColor: buttonColor == Colors.white ? Colors.black : Colors.white, backgroundColor: buttonColor,
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
//                   side: BorderSide(color: Colors.grey)
//                 )
//               ),onPressed: (){_changeColor();},
//                   child: Text("Gluten",style: TextStyle(fontSize: 15),)),
//               SizedBox(width: 7,),
//               ElevatedButton(style: ElevatedButton.styleFrom(  foregroundColor: buttonColor1 == Colors.white ? Colors.black : Colors.white, backgroundColor: buttonColor1, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
//                   side: BorderSide(color: Colors.grey)
//               )),
//                   onPressed: (){
//                 _changeColor1();
//                   }, child: Text("Peanuts")),
//               SizedBox(width: 7,),
//               ElevatedButton(style: ElevatedButton.styleFrom(  foregroundColor: buttonColor2 == Colors.white ? Colors.black : Colors.white, backgroundColor: buttonColor2, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
//                   side: BorderSide(color: Colors.grey)
//               )),
//                   onPressed: (){
//                     _changeColor2();
//                   }, child: Text("Eggs"))
//             ],
//           ),
//           SizedBox(height: 10,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(style: ElevatedButton.styleFrom(  foregroundColor: buttonColor3 == Colors.white ? Colors.black : Colors.white, backgroundColor: buttonColor3, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
//                   side: BorderSide(color: Colors.grey)
//               )),
//                   onPressed: (){
//                     _changeColor3();
//                   }, child: Text("Fish")), SizedBox(width: 7,),
//               ElevatedButton(style: ElevatedButton.styleFrom(  foregroundColor: buttonColor4 == Colors.white ? Colors.black : Colors.white, backgroundColor: buttonColor4, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
//                   side: BorderSide(color: Colors.grey)
//               )),
//                   onPressed: (){
//                     _changeColor4();
//                   }, child: Text("Tree Nuts")),
//               SizedBox(width: 7,),
//               ElevatedButton(style: ElevatedButton.styleFrom(
//                   foregroundColor: buttonColor5 == Colors.white ? Colors.black : Colors.white, backgroundColor: buttonColor5,
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
//                   side: BorderSide(color: Colors.grey)
//               )),
//                   onPressed: (){
//                     _changeColor5();
//                   }, child: Text("Diary"))
//             ],
//           ),
//           SizedBox(height: 10,),
//           Padding(
//             padding: const EdgeInsets.only(left: 65),
//             child: Row(
//               children: [
//                 ElevatedButton(style: ElevatedButton.styleFrom(  foregroundColor: buttonColor6 == Colors.white ? Colors.black : Colors.white, backgroundColor: buttonColor6, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
//                     side: BorderSide(color: Colors.grey)
//                 )),
//                     onPressed: (){
//                       _changeColor6();
//                     }, child: Text("Soy")), SizedBox(width: 7,),
//                 ElevatedButton(style: ElevatedButton.styleFrom(  foregroundColor: buttonColor7 == Colors.white ? Colors.black : Colors.white, backgroundColor: buttonColor7, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
//                     side: BorderSide(color: Colors.grey)
//                 )),
//                     onPressed: (){
//                       _changeColor7();
//                     }, child: Text("ShellFish")),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 45,left: 15.0),
//             child: Row(
//               children: [
//                 Text("You can exclude more types of foods and even")
//               ],
//             ),
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(left: 15.0),
//             child: Row(
//               children: [
//                 Text("custom Keywords later in the Settings menu")
//               ],
//             ),
//           ),
//           SizedBox(height: 100,),
//           Container(height: 30,width:300,decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),border: Border.all(color: Colors.black87),color: Colors.red),
//             child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red),onPressed: (){}, child: Text("Next",style: TextStyle(color: Colors.white),)
//
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For date formatting

void main() {
  runApp(MaterialApp(
    home: DayPicker(),
  ));
}

class DayPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define the days of the week starting from Sunday
    List<String> daysOfWeek = [
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Day'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(7, (index) {
            // Calculate the date for each day of the week
            DateTime date = DateTime.now().add(Duration(days: index - DateTime.now().weekday));

            bool isToday = isSameDay(date, DateTime.now());

            return Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.all(4.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isToday ? Colors.lightBlue : Colors.grey[300], // Highlight today
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                DateFormat('EEEE').format(date), // Display full day name
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  bool isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }
}
