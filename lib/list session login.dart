// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// //import 'package:shared_preferences/shared_preferences.dart';
// class liste extends StatefulWidget {
//   const liste({super.key});
//
//   @override
//   State<liste> createState() => _listeState();
// }
//
// class _listeState extends State<liste> {
//   TextEditingController namectrl=TextEditingController();
//   TextEditingController passctrl=TextEditingController();
//   // List<dynamic> empty=[];
//
// //   void login() async{
// //     SharedPreferences sp= await SharedPreferences.getInstance();
// //     String? storeduser=sp.getString("username");
// //     String? storedpassword=sp.getString("userPassword");
// // empty.add({"username":namectrl.text,"password":passctrl.text});
// //
// // empty.map((x)
// // {
// //     print("Username:${x["username"]},Password:${x[""]}");
// //
// // });
// //
// //   }
// //   void login() async {
// //     SharedPreferences sp = await SharedPreferences.getInstance();
// //     String? storeduser = sp.getString("username");
// //     String? storedpassword = sp.getString("userPassword");
// //
// //     List<Map<String, String>> empty = [];
// //     empty.add({"username": namectrl.text, "password": passctrl.text});
// //
// //     empty.map((x) {
// //       print("Username: ${x["username"]}, Password: ${x["password"]}");
// //     });
// //
// //       if (storeduser == namectrl.text && storedpassword == passctrl.text) {
// //         ScaffoldMessenger.of(context).showSnackBar(
// //             SnackBar(content: Text("Login successful")));
// //       } else {
// //         ScaffoldMessenger.of(context).showSnackBar(
// //             SnackBar(content: Text("Incorrect username or password")));
// //       }
// //
// //   }
// //
// //
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //
// // body: Column(
// //   children: [
// //     TextFormField(
// //       controller: namectrl,
// //     ),
// //     TextFormField(
// //       controller: passctrl,
// //     ),
// //     ElevatedButton(onPressed: (){
// //       login();
// //
// //     }, child: Text("login"))
// //   ],
// // ),
// //
// //
// //     );
// //   }
// // }
