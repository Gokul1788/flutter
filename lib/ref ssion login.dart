// import 'package:demoo/SessionStorage/homepage.dart';
// import 'package:demoo/SessionStorage/signup.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {

  TextEditingController emailcontroller=TextEditingController();
  TextEditingController pwcontroller=TextEditingController();

  login() async{
    SharedPreferences sp=await SharedPreferences.getInstance();
    String? storedEmail=sp.getString("email");
    String? storedPassword=sp.getString("password");
    print(storedPassword);
    print(storedEmail);
    if(storedEmail==emailcontroller.text){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login successful")));
      //Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid credentials")));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loginpage"),
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
          ElevatedButton(onPressed: (){login();}, child: Text("Login")),
          SizedBox(height: 10,),
          TextButton(onPressed: (){
           // Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
          }, child: Text("don't have account? Signup"))
        ],
      ),
    );
  }
}