// import 'package:flutter/material.dart';
//
// class Scr5 extends StatefulWidget {
//   const Scr5({Key? key}) : super(key: key);
//
//   @override
//   State<Scr5> createState() => _Scr5State();
// }
//
// class _Scr5State extends State<Scr5> {
//   final TextEditingController heightController = TextEditingController();
//   final TextEditingController weightController = TextEditingController();
//   String bmiResult = "";
//
//   void _calculateBMI() {
//     if (heightController.text.isEmpty || weightController.text.isEmpty) {
//       bmiResult = ""; // Clear the result if inputs are empty
//       return;
//     }
//
//     double weight;
//     double height;
//     try {
//       weight = double.parse(weightController.text);
//       height = double.parse(heightController.text) / 100; // Convert cm to meters
//     } catch (e) {
//       bmiResult = "Invalid input. Please enter numeric values.";
//       return;
//     }
//
//     double bmi = weight / (height * height);
//     setState(() {
//       bmiResult = "Your BMI is ${bmi.toStringAsFixed(2)}";
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("BMI Calculator"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextFormField(
//               controller: heightController,
//               decoration: InputDecoration(labelText: "Height (cm)"),
//               keyboardType: TextInputType.number,
//               onChanged: (value) {
//                 _calculateBMI(); // Calculate BMI when height changes
//               },
//             ),
//             TextFormField(
//               controller: weightController,
//               decoration: InputDecoration(labelText: "Weight (kg)"),
//               keyboardType: TextInputType.number,
//               onChanged: (value) {
//                 _calculateBMI(); // Calculate BMI when weight changes
//               },
//             ),
//             SizedBox(height: 20),
//             Text(bmiResult, style: TextStyle(fontSize: 20)), // Display the BMI result
//           ],
//         ),
//       ),
//     );
//   }
// }
//

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Gender(),
//     );
//   }
// }
//
// class Gender extends StatefulWidget {
//   @override
//   _GenderState createState() => _GenderState();
// }
//
// class _GenderState extends State<Gender> {
//   String _gender = ''; // Default gender selection
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Gender Selection'),
//       ),
//       body: Column(
//         children: [
//           ListTile(
//             title: const Text('Male'),
//             leading: Radio<String>(
//               value: 'Male',
//               groupValue: _gender,
//               onChanged: (String? value) {
//                 setState(() {
//                   _gender = value!;
//                 });
//               },
//             ),
//           ),
//           ListTile(
//             title: const Text('Female'),
//             leading: Radio<String>(
//               value: 'Female',
//               groupValue: _gender,
//               onChanged: (String? value) {
//                 setState(() {
//                   _gender = value!;
//                 });
//               },
//             ),
//           ),
//           ListTile(
//             title: const Text('Other'),
//             leading: Radio<String>(
//               value: 'Other',
//               groupValue: _gender,
//               onChanged: (String? value) {
//                 setState(() {
//                   _gender = value!;
//                 });
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text('Selected Gender: $_gender'),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'dart:async';
import 'package:flutter/material.dart';



class Splash123 extends StatefulWidget {
  @override
  _Splash123State createState() => _Splash123State();
}

class _Splash123State extends State<Splash123> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => login123()),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          "Expense Tracker",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}