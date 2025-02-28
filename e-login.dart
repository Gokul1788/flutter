import 'package:firebase_auth/firebase_auth.dart';
import 'package:firestore/Screen.dart';
import 'package:flutter/material.dart';
class eelogin extends StatefulWidget {
  const eelogin({super.key});

  @override
  State<eelogin> createState() => _eeloginState();
}

class _eeloginState extends State<eelogin> {
  TextEditingController email=TextEditingController();
  TextEditingController pass=TextEditingController();

  Future<void> login() async{
try {
   await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email.text, password: pass.text);
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Logged in as ${email.text}')));
}
on FirebaseAuthException catch (e)
{
     if(e.code!=email.text)
       {
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("no user found for that email")));
       }

     else
       {
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error.${e.message}")));
       }
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
          TextFormField(validator: (input){
            if(input==null||input.length<3)
              {
                   return "pls enter the details";
              }
            return null;

          },
            controller: email,
            decoration: InputDecoration(),

          ),
          TextFormField(
            controller: pass,
            validator: (input){

            if(!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(input!))
              {
                     return "pls enter the valid creadtentials";
              }

            },
          ),
          ElevatedButton(onPressed: (){
            setState(() {
login();

            });

          }, child: Text("data"))

        ],

      ),



    );
  }
}
