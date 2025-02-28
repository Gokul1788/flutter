import 'package:firebase_auth/session%20login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class ssion extends StatefulWidget {
  const ssion({super.key});

  @override
  State<ssion> createState() => _ssionState();
}

class _ssionState extends State<ssion> {
  TextEditingController username=TextEditingController();
  TextEditingController Password=TextEditingController();

  void signup() async{
    SharedPreferences sp =await SharedPreferences.getInstance();
    try{
      await sp.setString("Name", username.text);
      await sp.setString("Pass", Password.text);

      if(username.text.isNotEmpty&&Password.text.isNotEmpty)
        {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("SuccessFully Regestired")));
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ssionlogin()));

        }
      else
        {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to Registered Regestired")));
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
          TextFormField(
            controller: username,
          ),
          TextFormField(
            controller: Password,
          ),
          ElevatedButton(onPressed: (){
            signup();

          }, child: Text("Sign up"))
        ],
      ),


    );
  }
}
