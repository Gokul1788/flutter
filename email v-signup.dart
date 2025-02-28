import 'package:firestore/e-login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class esignup extends StatefulWidget {
  const esignup({super.key});

  @override
  State<esignup> createState() => _esignupState();
}

class _esignupState extends State<esignup> {
  TextEditingController email= TextEditingController();
  TextEditingController password=TextEditingController();

Future<void> sign() async{

  try{
    await FirebaseAuth.
    instance.createUserWithEmailAndPassword(email: email.text, password: password.text);


  }
  catch(e)
  {
    throw Exception(e);
  }

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           TextFormField(
             controller:email ,
           ),
           TextFormField(
             controller:password ,
           ),
           ElevatedButton(onPressed: (){
             setState(() {
               sign();
               Navigator.push(context, MaterialPageRoute(builder: (context)=>eelogin()));
             });
             
             Text("Register");
           }, child: Text("Register"))
         ],
       ),



    );
  }
}
