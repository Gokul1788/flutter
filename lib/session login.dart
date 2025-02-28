import 'package:firebase_auth/Firebase/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class ssionlogin extends StatefulWidget {
  const ssionlogin({super.key});

  @override
  State<ssionlogin> createState() => _ssionloginState();
}

class _ssionloginState extends State<ssionlogin> {
  TextEditingController name =TextEditingController();
  TextEditingController pass =TextEditingController();
  void login() async{
    SharedPreferences sp= await SharedPreferences.getInstance();

       String? storedusername=sp.getString("Name");
       String? storeduserpassword=sp.getString("Pass");
       print(storedusername);
       print(storeduserpassword);

       if(storedusername==name.text&&storeduserpassword==pass.text)
       {
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("login")));
         //Navigator.push(context, MaterialPageRoute(builder: (context)=>lgin()));
       }
       else
         {
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Not login")));
         }



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
            controller: pass,
          ),
          ElevatedButton(onPressed: (){
            login();

          }, child:Text("login"))
        ],
      ),

    );
  }
}
