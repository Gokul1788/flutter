import 'package:flutter/material.dart';
class scr3 extends StatefulWidget {
  const scr3({super.key});

  @override
  State<scr3> createState() => _scr3State();
}

class _scr3State extends State<scr3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 80,
          width: 320,
          child: Text("Select the food categories you love most.Recipes from these categories will be prioritized within this Meal Type.provided they match   ")),


    );
  }
}
