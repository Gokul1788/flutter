import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class fbstor extends StatefulWidget {
  const fbstor({super.key});

  @override
  State<fbstor> createState() => _fbstorState();
}

class _fbstorState extends State<fbstor> {
  TextEditingController name=TextEditingController();
  TextEditingController password=TextEditingController();

  sign(){
    FirebaseFirestore.instance.collection('users').add({
      'name':name.text,
      'passw':password.text,
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: name,
          ),
          TextFormField(
            controller: password,
          ),
          ElevatedButton(onPressed: (){
            sign();
          }, child:Text("Submit") )
        ],
      ),


    );
  }
}
