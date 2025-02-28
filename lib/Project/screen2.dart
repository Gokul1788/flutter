import 'package:flutter/material.dart';
class scr2 extends StatefulWidget {
  const scr2({super.key});

  @override
  State<scr2> createState() => _scr2State();
}

class _scr2State extends State<scr2> {

  bool ischecked=false;
  bool ischecked1=false;
  bool ischecked2=false;
  bool ischecked3=false;
  Color _tileColor = Colors.white;
  Color _tileColor1 = Colors.white;
  Color _tileColor2 = Colors.white;
  Color _tileColor3 = Colors.white;


  void toggle(value){
    setState(() {
      ischecked=value;
      _tileColor=ischecked?Colors.grey:Colors.white;
    });

  }
  void toggle1(value){
    setState(() {
      ischecked1=value;
      _tileColor1=ischecked1?Colors.grey:Colors.white;
    });

  }
  void toggle2(value){
    setState(() {
      ischecked2=value;
      _tileColor2=ischecked2?Colors.grey:Colors.white;
    });

  }
  void toggle3(value){
    setState(() {
      ischecked3=value;
      _tileColor3=ischecked2?Colors.grey:Colors.white;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_outlined),
        title: Text("Your Meals",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        actions: [
          Text("Next",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrange),)
        ],

      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17.0),
                  child: Text("Which meals would you like for us to plan for your "),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17.0),
                  child: Text("every day?"),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30,right: 40),
              child: Container(
                height:80,
                width: 320,
                //color: Colors.red,
                child: Text("After finishing signup,you 'll have more options,like reaaranging the meals,adding new ones,and editing their settings in more detail",style: TextStyle(fontSize: 13),),
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Text("Your meals",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 190),
                  child: Text("Plan for me",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                GestureDetector(
                    onTap: (){
                      showDialog(context: context, builder: (BuildContext)
                      {
                        return AlertDialog(
                          content: SingleChildScrollView(
                            child: Column(
                              children: [
                               Text("If you disable this,the generator will leave the meal empty."
                                   "The generator will assume reasonable calorie and"
                                   " macronument values based on your MealSize setting when it generates other meals in your plan"),
                                SizedBox(height: 25,),
                                Text("This is useful if you want ot track the meal yourself or if you want to use the meal as placeholder for the things you eat outside the plan"

                                    "You can Still tap on the metal from your planner or choose List Alternatives to get the suggestions for this meal")
                              ,Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child: Text("close")),
                                ],
                              )

                              ],
                            ),
                          ),


                        );
                      });

                    }

                    ,child: Text("�",style: TextStyle(fontSize: 25),)),
              ],
            ),
            Divider(
              color: Colors.black, // Line color
              thickness: 2, // Line thickness
            ),
            ListTile(
              leading: Text("BreakFast",style: TextStyle(fontSize: 25)),
              title: GestureDetector(
                  onTap: (){
                    setState(() {

                    });
                  },


                  child: Text("Remove",style: TextStyle(color: Colors.red),)),
              trailing: Checkbox(value: ischecked, onChanged:toggle),
              tileColor: _tileColor,

              ),
    Visibility(
    visible:ischecked,
    child: Container(
      height: 80,
      width: 320,
      child: Expanded(child: Text("We'll treat this meal like a placeholder.we won't suggest any dishes here and we'll leave space in your targets so you can track what you actually ate by searching or scanning barcodes")),
    ),
    ),

    ListTile(
    leading: Text("Lunch",style: TextStyle(fontSize: 25)),
    title: Text("Remove",style: TextStyle(color: Colors.red),),
    trailing: Checkbox(value: ischecked1, onChanged:toggle1),
      tileColor: _tileColor1,

    ),
    Visibility(
    visible:ischecked1,
    child: Container(
    height: 80,
    width: 320,
    child: Expanded(child: Text("We'll treat this meal like a placeholder.we won't suggest any dishes here and we'll leave space in your targets so you can track what you actually ate by searching or scanning barcodes")),
    ),
    ),


    ListTile(
    leading: Text(" Dinner",style: TextStyle(fontSize: 25)),
    title: Text("Remove",style: TextStyle(color: Colors.red),),
    trailing: Checkbox(value: ischecked2, onChanged:toggle2),
tileColor: _tileColor2,
    ),
    Visibility(
    visible:ischecked2,
    child: Container(
    height: 80,
    width: 320,
    child: Expanded(child: Text("We'll treat this meal like a placeholder.we won't suggest any dishes here and we'll leave space in your targets so you can track what you actually ate by searching or scanning barcodes")),
    ),
    ) ,
    ListTile(
    leading: Text(" Snack",style: TextStyle(fontSize: 25)),
    title: Text("Remove",style: TextStyle(color: Colors.red),),
    trailing: Checkbox(value: ischecked3, onChanged:toggle3),
    tileColor: _tileColor3,
    ),
    Visibility(
    visible:ischecked3,
    child: Container(
    height: 80,
    width: 320,
    child: Expanded(child: Text("We'll treat this meal like a placeholder.we won't suggest any dishes here and we'll leave space in your targets so you can track what you actually ate by searching or scanning barcodes")),
    ),


    ) ,
            Container(height: 30,width:200,decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),border: Border.all(color: Colors.black87),color: Colors.red),
              child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red),onPressed: (){}, child: Text("Next",style: TextStyle(color: Colors.white),)

              ),
            )
          ],
        ),
      ),

    );
  }
}

// import 'package:flutter/material.dart';
//
// class scr2 extends StatefulWidget {
//   const scr2({super.key});
//
//   @override
//   State<scr2> createState() => _scr2State();
// }
//
// class _scr2State extends State<scr2> {
//   List<Map<String, dynamic>> meals = [
//     {'name': 'Breakfast', 'isChecked': false, 'color': Colors.white},
//     {'name': 'Lunch', 'isChecked': false, 'color': Colors.white},
//     {'name': 'Dinner', 'isChecked': false, 'color': Colors.white},
//     {'name': 'Snack', 'isChecked': false, 'color': Colors.white},
//   ];
//
//   void toggle(int index, bool? value) {
//     setState(() {
//       meals[index]['isChecked'] = value ?? false;
//       meals[index]['color'] = meals[index]['isChecked'] ? Colors.grey : Colors.white;
//     });
//   }
//
//   void removeMeal(int index) {
//     setState(() {
//       meals.removeAt(index);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.arrow_back_outlined),
//         title: Text("Your Meals", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
//         actions: [
//           Text("Next", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange)),
//         ],
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 17.0),
//                   child: Text("Which meals would you like for us to plan for your every day?"),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 30, right: 40),
//               child: Container(
//                 height: 80,
//                 width: 320,
//                 child: Text(
//                   "After finishing signup, you'll have more options, like rearranging the meals, adding new ones, and editing their settings in more detail",
//                   style: TextStyle(fontSize: 13),
//                 ),
//               ),
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 17),
//                   child: Text("Your meals", style: TextStyle(fontWeight: FontWeight.bold)),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 190),
//                   child: Text("Plan for me", style: TextStyle(fontWeight: FontWeight.bold)),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialog(
//                           content: SingleChildScrollView(
//                             child: Column(
//                               children: [
//                                 Text(
//                                   "If you disable this, the generator will leave the meal empty. The generator will assume reasonable calorie and macronutrient values based on your MealSize setting when it generates other meals in your plan.",
//                                 ),
//                                 SizedBox(height: 25),
//                                 Text(
//                                   "This is useful if you want to track the meal yourself or if you want to use the meal as a placeholder for the things you eat outside the plan. You can still tap on the meal from your planner or choose List Alternatives to get the suggestions for this meal.",
//                                 ),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   children: [
//                                     ElevatedButton(
//                                       onPressed: () {
//                                         Navigator.pop(context);
//                                       },
//                                       child: Text("Close"),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                     );
//                   },
//                   child: Text("�", style: TextStyle(fontSize: 25)),
//                 ),
//               ],
//             ),
//             Divider(
//               color: Colors.black,
//               thickness: 2,
//             ),
//             Expanded(
//               child: ListView.builder(,
//                 itemCount: meals.length,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     children: [
//                       ListTile(
//                         leading: Text(meals[index]['name'], style: TextStyle(fontSize: 25)),
//                         title: GestureDetector(
//                           onTap: () => removeMeal(index),
//                           child: Text("Remove", style: TextStyle(color: Colors.red)),
//                         ),
//                         trailing: Checkbox(
//                           value: meals[index]['isChecked'],
//                           onChanged: (value) => toggle(index, value),
//                         ),
//                         tileColor: meals[index]['color'],
//                       ),
//                       Visibility(
//                         visible: meals[index]['isChecked'],
//                         child: Container(
//                           height: 80,
//                           width: 320,
//                           child: Text(
//                             "We'll treat this meal like a placeholder. We won't suggest any dishes here and we'll leave space in your targets so you can track what you actually ate by searching or scanning barcodes.",
//                           ),
//                         ),
//                       ),
//                     ],
//                   );
//                 },
//               ),
//             ),
//             Container(height: 30,width:300,decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),border: Border.all(color: Colors.black87),color: Colors.red),
//               child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red),onPressed: (){}, child: Text("Next",style: TextStyle(color: Colors.white),)
//
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
