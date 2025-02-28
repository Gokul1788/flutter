// import 'package:firestore/email-login%20ref.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import '../login.dart';
//
//
// class Signup extends StatefulWidget {
//   const Signup({super.key});
//
//   @override
//   State<Signup> createState() => _SignupState();
// }
//
// class _SignupState extends State<Signup> {
//   //final FirebaseAuth _auth = FirebaseAuth.instance;
//   final _key = GlobalKey<FormState>();
//   bool _signup = false;
//   TextEditingController namectrl = TextEditingController();
//   TextEditingController passwordctrl = TextEditingController();
//   TextEditingController phonectrl = TextEditingController();
//   TextEditingController emailctrl = TextEditingController();
//
//
//   a() {
//     setState(() {
//       namectrl.text.isNotEmpty &&
//           passwordctrl.text.isNotEmpty &&
//           phonectrl.text.isNotEmpty &&
//           emailctrl.text.isNotEmpty
//           ? _signup = true
//           : _signup = false;
//     });
//   }
//
//
//   Future signUp({String? email, String? password}) async {
//     try {
//       await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: emailctrl.text,
//         password: passwordctrl.text,
//       );
//       return null;
//     } on FirebaseAuthException catch (e) {
//       return e.message;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "SIGN UP",
//           style: TextStyle(fontWeight: FontWeight.bold, color: CupertinoColors.systemPurple),
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         // decoration: BoxDecoration(
//         //   // gradient: LinearGradient(
//         //   //   begin: Alignment.topCenter,
//         //   //   end: Alignment.bottomCenter,
//         //   //   colors: <Color>[Colors.pinkAccent, CupertinoColors.white],
//         //   // ),
//         // ),
//         child: Form(
//           key: _key,
//           child: Padding(
//             padding: const EdgeInsets.only(top: 150, bottom: 20.0, left: 50, right: 50),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   width: 300,
//                   child: TextFormField(
//                     onChanged: (i) {
//                       a();
//                     },
//                     controller: namectrl,
//                     decoration: InputDecoration(
//                       fillColor: Colors.white,
//                       filled: true,
//                       prefixIcon: Icon(CupertinoIcons.person, color: Colors.black),
//                       hintText: "Enter Your Name",
//                       hintStyle: TextStyle(fontWeight: FontWeight.bold, color: CupertinoColors.inactiveGray),
//                       labelText: "Username",
//                       labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.pinkAccent),
//                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                     ),
//                     validator: (valid) {
//                       final Name = RegExp('[a-zA-Z]');
//                       if (valid == null || valid.isEmpty) {
//                         return "Please Enter the Name";
//                       } else if (!Name.hasMatch(valid)) {
//                         return "Incorrect";
//                       }
//                     },
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 SizedBox(
//                   width: 300,
//                   child: TextFormField(
//                     onChanged: (i) {
//                       a();
//                     },
//                     controller: emailctrl,
//                     decoration: InputDecoration(
//                       fillColor: Colors.white,
//                       filled: true,
//                       prefixIcon: Icon(CupertinoIcons.mail, color: Colors.black),
//                       hintText: "Enter Your Email",
//                       hintStyle: TextStyle(fontWeight: FontWeight.bold, color: CupertinoColors.inactiveGray),
//                       labelText: "Email",
//                       labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.pinkAccent),
//                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                     ),
//                     validator: (email) {
//                       if (email == null || email.isEmpty) {
//                         return "Please Enter a Valid Email";
//                       } else if (!RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$").hasMatch(email)) {
//                         return "Invalid Email Format";
//                       }
//                     },
//                   ),
//                 ),
//                 SizedBox(height: 20),
//
//                 SizedBox(
//                   width: 300,
//                   child: TextFormField(
//                     onChanged: (i) {
//                       a();
//                     },
//                     controller: passwordctrl,
//                     decoration: InputDecoration(
//                       fillColor: Colors.white,
//                       filled: true,
//                       prefixIcon: Icon(Icons.key_outlined, color: Colors.black),
//                       hintText: "Enter Your Password",
//                       hintStyle: TextStyle(fontWeight: FontWeight.bold, color: CupertinoColors.inactiveGray),
//                       labelText: "Password",
//                       labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.pinkAccent),
//                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                     ),
//                     validator: (right) {
//                       final Key = RegExp(r'^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#\$&*~]).{8,}$');
//                       if (right == null || right.isEmpty) {
//                         return "Please Enter a Valid Password";
//                       } else if (!Key.hasMatch(right)) {
//                         return "Password should be at least 8 characters, including uppercase, lowercase, number, and special character";
//                       }
//                     },
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 SizedBox(
//                   width: 300,
//                   child: TextFormField(
//                     onChanged: (i) {
//                       a();
//                     },
//                     controller: phonectrl,
//                     decoration: InputDecoration(
//                       fillColor: Colors.white,
//                       filled: true,
//                       prefixIcon: Icon(CupertinoIcons.phone, color: Colors.black),
//                       hintText: "Enter Your PhoneNumber",
//                       hintStyle: TextStyle(fontWeight: FontWeight.bold, color: CupertinoColors.inactiveGray),
//                       labelText: "Phone Number",
//                       labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.pinkAccent),
//                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                     ),
//                     validator: (phone) {
//                       final Phone = RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)');
//                       if (phone == null || phone.isEmpty) {
//                         return "Please Enter the Correct Number";
//                       } else if (!Phone.hasMatch(phone)) {
//                         return "Incorrect Number";
//                       }
//                     },
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Visibility(
//                   visible: _signup,
//                   child: ElevatedButton(
//                     onPressed: () async {
//                       if (_key.currentState!.validate()) {
//                         // Call Firebase signup method
//                         String? result = await signUp(
//                           email: emailctrl.text,
//                           password: passwordctrl.text,
//                         );
//                         if (result == null) {
//                           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("User Created Successfully")));
//                           Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
//                         } else {
//                           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
//                         }
//                       }
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.pinkAccent,
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal(left: Radius.circular(20), right: Radius.circular(20))),
//                     ),
//                     child: Text("SignUp"),
//                   ),
//                 ),
//
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }