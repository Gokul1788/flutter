import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'login.dart';
class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController pwcontroller=TextEditingController();
  void signup() async{
    SharedPreferences sp=await SharedPreferences.getInstance();
    try{
      await sp.setString("email", emailcontroller.text);
      await sp.setString("password", pwcontroller.text);

      if(emailcontroller.text.isNotEmpty&&pwcontroller.text.isNotEmpty){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("User Registered Successfully")));
        print("Succesfully registered");
       // Navigator.push(context,MaterialPageRoute(builder: (context)=>loginpage()));
      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to register user")));
      }
    }
    catch(e){
      throw Exception(e);
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: emailcontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "enter email"
            ),
          ),
          SizedBox(height: 10,),
          TextFormField(
            controller: pwcontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "enter email"
            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){signup();}, child: Text("Signup"))
        ],
      ),
    );
  }
}