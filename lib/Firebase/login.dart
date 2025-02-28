// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// class lgin extends StatefulWidget {
//   const lgin({super.key});
//
//   @override
//   State<lgin> createState() => _lginState();
// }
//
// class _lginState extends State<lgin> {
//
//   final _key=GlobalKey<FormState>();
//   bool _show=false;
//   TextEditingController ctrl=TextEditingController();
//   TextEditingController ctrl1=TextEditingController();
//   TextEditingController ctrl2=TextEditingController();
//   TextEditingController ctrl3=TextEditingController();
//
//   a(){
// setState(() {
//   ctrl.text.isNotEmpty&& ctrl1.text.isNotEmpty&& ctrl2.text.isNotEmpty&& ctrl3.text.isNotEmpty? _show=true:_show=false;
// });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("SIGN UP",style: TextStyle(fontStyle: FontStyle.italic,
//             fontWeight: FontWeight.bold
//         ),),
//       ),
//
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/img.png"),fit: BoxFit.fill)),
//         child: Padding(
//           padding: const EdgeInsets.only(top: 195),
//           child: Form(
//             key: _key,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(height: 45,width: 350,
//                   child: TextFormField(decoration: InputDecoration(fillColor: Colors.white,filled: true,
//                       hintText: "UserName",
//                       hintStyle: TextStyle(fontWeight: FontWeight.bold,),
//                       labelText: "UserName",
//                       labelStyle: TextStyle(fontWeight: FontWeight.bold,),
//                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
//
//                   ) ,
//                     controller: ctrl,
//
//                     onChanged: (i)
//                     {
//                       a();
//                     },
//                     validator: (input){
//                       if(input==null || input.length<3)
//                         {
//                           return "Pls Enter the Username";
//                         }
//                       return null;
//                     },
//                   ),
//                 ),SizedBox(height: 15,),
//
//                 Container(height: 45,width: 350,
//                   child: TextFormField(decoration: InputDecoration(fillColor: Colors.white,filled: true,
//                       hintText: "Password",
//                       hintStyle: TextStyle(fontWeight: FontWeight.bold,),
//                       labelText: "Password",
//                        labelStyle: TextStyle(fontWeight: FontWeight.bold,),
//                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
//
//                   ) ,
//                     controller: ctrl1,
//                     onChanged: (i)
//                     {
//                       a();
//                     },
//                     validator: (input)
//                     {
//                       if(!RegExp(r"^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\S+$).{8,20}$").hasMatch(input!))
//                         {
//                           return "Pls enter the Valid credentials";
//                         }
//                       return null;
//
//
//                     },
//                   ),
//                 ),SizedBox(height: 15,),
//
//                 Container(height: 45,width: 350,
//                   child: TextFormField(decoration: InputDecoration(fillColor: Colors.white,filled: true,
//                       hintText: "Phone",
//                       hintStyle: TextStyle(fontWeight: FontWeight.bold,),
//                       labelText: "Phone",
//                       labelStyle: TextStyle(fontWeight: FontWeight.bold,),
//                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
//
//                   ) ,
//                     controller: ctrl2,
//                     onChanged: (i)
//                     {
//                       a();
//                     },
//                     validator: (input)
//                     {
//                       if(!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(input!))
//                       {
//                         return "Pls enter the Valid phone number credentials";
//                       }
//                       return null;
//
//
//                     },
//                   ),
//                 ),
//                 SizedBox(height: 15,),
//
//                 Container(height: 45,width: 350,
//                   child: TextFormField(decoration: InputDecoration(fillColor: Colors.white,filled: true,
//                       hintText: "Gmail",
//                       hintStyle: TextStyle(fontWeight: FontWeight.bold,),
//                       labelText: "gmail",
//                       labelStyle: TextStyle(fontWeight: FontWeight.bold,),
//                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
//
//                   ) ,
//                     controller: ctrl3,
//                     onChanged: (i)
//                     {
//                       a();
//                     },
//                     validator: (input)
//                     {
//                       if(!RegExp(r'^[a-zA-Z0-9._%+-]+@gmail\.com$').hasMatch(input!))
//                       {
//                         return "Pls enter the Valid credentials";
//                       }
//                       return null;
//
//                     },
//                   ),
//                 ),
//                 SizedBox(height: 10,),
//                 Visibility(
//                   visible: _show,
//                   child: ElevatedButton(style: ElevatedButton.styleFrom(
//                     foregroundColor: Colors.greenAccent,
//                     backgroundColor: Colors.grey,
//
//                   ),onPressed: (){
//                     if(_key.currentState!.validate())
//                       {
//                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sucessfully Registered")));
//                       }
//
//                   }, child: Text("Ok",style: TextStyle(fontSize: 15),)),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
