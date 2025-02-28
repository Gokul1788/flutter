// import 'package:flutter/material.dart';
// class scr4 extends StatefulWidget {
//   const scr4({super.key});
//
//   @override
//   State<scr4> createState() => _scr4State();
// }
//
// class _scr4State extends State<scr4> {
//   bool ischecked=false;
//   bool ischecked1=false;
//   bool ischecked2=false;
//   bool ischecked3=false;
//   bool ischecked4=false;
//   bool ischecked5=false;
//   bool ischecked6=false;
//   bool ischecked7=false;
//   bool ischecked8=false;
//   bool ischecked9=false;
//
//   void toggle(value) {
//     setState(() {
//       ischecked = value;
//     });
//   }
//   void toggle1(value) {
//     setState(() {
//       ischecked1= value;
//     });
//   }
//   void toggle2(value) {
//     setState(() {
//       ischecked2 = value;
//     });
//   }
//   void toggle3(value) {
//     setState(() {
//       ischecked3= value;
//     });
//   }
//   void toggle4(value) {
//     setState(() {
//       ischecked4 = value;
//     });
//   }
//   void toggle5(value) {
//     setState(() {
//       ischecked5 = value;
//     });
//   }void toggle6(value) {
//     setState(() {
//       ischecked6 = value;
//     });
//   }void toggle7(value) {
//     setState(() {
//       ischecked7 = value;
//     });
//   }void toggle8(value) {
//     setState(() {
//       ischecked8 = value;
//     });
//   }void toggle9(value) {
//     setState(() {
//       ischecked9 = value;
//     });
//   }
//
//
//
//
//
//
//     @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.arrow_back_outlined),
//         title: Text("Physical Profile",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
//         actions: [
//           Text("Next",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrange),)
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Column(
//             children: [
//               ListTile(
//                 leading: Container(
//                   height: 50,
//                   width: 50,
//                   decoration: BoxDecoration(shape: BoxShape.circle,
//                       image: DecorationImage(image: AssetImage("image/img_1.png"),
//                           fit: BoxFit.fill)),
//                 ),
//                 title: Text("2428 Calories"),
//                 subtitle: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("241g Carbs,81g Fat,182g"),
//                     Text("Protein"),
//                   ],
//                 ),
//                 trailing: Icon(Icons.chevron_right_sharp),
//               ),
//               LinearProgressIndicator(),
//
//               Text("Tracked 0/4 meals"),
//
//               ListTile(
//               leading: Checkbox(value: ischecked1, onChanged:toggle1),
//                 title: Text("BreakFast",style: TextStyle(fontWeight: FontWeight.bold),),
//                 subtitle: Text("634 Calories"),
//                 trailing: Icon(Icons.more_vert),),
//
//               Row(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15),
//                     child: Checkbox(value:ischecked, onChanged:(value)=>toggle(value)),
//                   ),
//                   Expanded(
//                     child: ListTile(
//                       leading: Container(
//                         height: 70,
//                         width: 70,
//                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/img.png"))),
//                       ),
//                       subtitle: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text("Egg and Onion Scramble",style: TextStyle(fontWeight: FontWeight.bold),),
//                           Text("2 omelete. 317 Calories"),
//                         ],
//                       ),
//                       trailing: Icon(Icons.more_vert),),
//
//                   ),
//
//                 ],
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15),
//                     child: Checkbox(value: ischecked2, onChanged: toggle2),
//                   ),
//                   Expanded(
//                     child: ListTile(
//                       leading: Container(
//                         height: 70,
//                         width: 70,
//                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/img.png"))),
//                       ),
//                       subtitle: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text("Peanut Butter Banana",style: TextStyle(fontWeight: FontWeight.bold),),
//                           Text("Smoothie",style: TextStyle(fontWeight: FontWeight.bold)),
//                           Text("1 serving.417 Calories"),
//                         ],
//                       ),
//                       trailing: Icon(Icons.more_vert),),
//
//                   ),
//
//                 ],
//               ),
//               ListTile(
//                 leading: Checkbox(value: ischecked3, onChanged:toggle3 ),
//                 title: Text("Lunch",style: TextStyle(fontWeight: FontWeight.bold),),
//                 subtitle: Text("654 Calories"),
//                 trailing: Icon(Icons.more_vert),),
//               Row(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15),
//                     child: Checkbox(value: ischecked4, onChanged:(value)=>toggle4(value)),
//                   ),
//                   Expanded(
//                     child: ListTile(
//                       leading: Container(
//                         height: 70,
//                         width: 70,
//                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/img.png"))),
//                       ),
//                       subtitle: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text("Simple Ham and Lettuce",style: TextStyle(fontWeight: FontWeight.bold),),
//                           Text("Otamel"),
//                           Text("1 bowl.194 Calories"),
//                         ],
//                       ),
//                       trailing: Icon(Icons.more_vert),),
//
//                   ),
//
//                 ],
//               ),
//
//
//             ],
//           ),
//         ),
//       ),
//
//
//     );
//   }
// }
//
import 'package:flutter/material.dart';

class Scr4 extends StatefulWidget {
  const Scr4({super.key});

  @override
  State<Scr4> createState() => _Scr4State();
}

class _Scr4State extends State<Scr4> {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool ischecked5 = false;
  bool ischecked6 = false;
  bool ischecked7 = false;
  bool ischecked8 = false;
  bool ischecked9 = false;
  bool ischecked10 = false;

  double progress = 0.0;
  void toggle( value) {
    setState(() {
      isChecked = value;
      _updateProgress();
    });
  }

  void toggle1( value) {
    setState(() {
      isChecked1 = value;
      _updateProgress();
    });
  }

  void toggle2( value) {
    setState(() {
      isChecked2 = value;
      _updateProgress();
    });
  }

  void toggle3(value) {
    setState(() {
      isChecked3 = value;
      _updateProgress();
    });
  }

  void toggle4(value) {
    setState(() {
      isChecked4 = value;
      _updateProgress();
    });
  }

  void toggle5( value) {
    setState(() {
      ischecked5 = value;
      _updateProgress();
    });
  }

  void toggle6(bool? value) {
    setState(() {
      ischecked6 = value ?? false;
      _updateProgress();
    });
  }

  void toggle7( value) {
    setState(() {
      ischecked7 = value;
      _updateProgress();
    });
  }

  void toggle8( value) {
    setState(() {
      ischecked8 = value;
      _updateProgress();
    });
  }

  void toggle9( value) {
    setState(() {
      ischecked9 = value ;
      _updateProgress();
    });
  }
  void toggle10( value) {
    setState(() {
      ischecked10 = value;
      _updateProgress();
    });
  }


  void _updateProgress() {
    int totalMeals = 11; // Total number of meals
    int trackedMeals = (isChecked ? 1 : 0) +
        (isChecked1 ? 1 : 0) +
        (isChecked2 ? 1 : 0) +
        (isChecked3 ? 1 : 0) +
        (isChecked4 ? 1 : 0) +
        (ischecked5 ? 1 : 0) +
        (ischecked6 ? 1 : 0) +
        (ischecked7 ? 1 : 0) +
        (ischecked8 ? 1 : 0) +
        (ischecked9 ? 1 : 0) +
        (ischecked10 ? 1 : 0) ;

    setState(() {
      progress = trackedMeals / totalMeals; // Update progress
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_outlined),
        title: Text(
          "Meal Plan",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          Text(
            "Next",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage("image/img_1.png"), fit: BoxFit.fill),
                  ),
                ),
                title: Text("2428 Calories"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("241g Carbs, 81g Fat, 182g Protein"),
                  ],
                ),
                trailing: Icon(Icons.chevron_right_sharp),
              ),
              LinearProgressIndicator(value: progress), // Show progress
              Text("Tracked ${((isChecked ? 1 : 0) + (isChecked1 ? 1 : 0) + (isChecked2 ? 1 : 0) + (isChecked3 ? 1 : 0) + (isChecked4 ? 1 : 0) + (ischecked5 ? 1 : 0) + (ischecked6 ? 1 : 0) + (ischecked7 ? 1 : 0) + (ischecked8 ? 1 : 0) + (ischecked9 ? 1 : 0))}/11 meals"),

              ListTile(
                leading: Checkbox(value: isChecked, onChanged: toggle),
                title: Text("Breakfast", style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text("634 Calories"),
                trailing: Icon(Icons.more_vert),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Checkbox(value: isChecked1, onChanged: toggle1),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/img_2.png"))),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Egg and Onion Scramble", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("2 omelet. 317 Calories"),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Checkbox(value: isChecked2, onChanged: toggle2),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/img_3.png"))),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Peanut Butter Banana Smoothie", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("1 serving. 417 Calories"),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: Checkbox(value: isChecked3, onChanged: toggle3),
                title: Text("Lunch", style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text("654 Calories"),
                trailing: Icon(Icons.more_vert),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Checkbox(value: isChecked4, onChanged: toggle4),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/img_4.png"))),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Simple Ham and Lettuce", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("1 bowl. 194 Calories"),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Checkbox(value: ischecked5, onChanged: toggle5),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/img_5.png"))),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mediterranean Salad", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("1/2 serving. 313 Calories"),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: Checkbox(value: ischecked6, onChanged: toggle6),
                title: Text("Dinner", style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text("654 Calories"),
                trailing: Icon(Icons.more_vert),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Checkbox(value: ischecked7, onChanged: toggle7),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/img_6.png"))),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Green Pea & Almond", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("1/2 serving. 313 Calories"),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),

                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Checkbox(value: ischecked8, onChanged: toggle8),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/img_7.png"))),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Fish Burger", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("1/2 serving. 313 Calories"),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),

                ],
              ),
              ListTile(
                leading: Checkbox(value: ischecked9, onChanged: toggle9),
                title: Text("Snacks", style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text("654 Calories"),
                trailing: Icon(Icons.more_vert),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Checkbox(value: ischecked10, onChanged: toggle10),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/img_8.png"))),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Quick Salsa Tuna Wrap", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("1/2 serving. 313 Calories"),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
