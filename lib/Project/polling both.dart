import 'package:animate_do/animate_do.dart';
import 'package:firebase_auth/Project/signup.dart';
import 'package:flutter/material.dart';
class loginn extends StatefulWidget {
  const loginn({super.key});

  @override
  State<loginn> createState() => _loginnState();
}

class _loginnState extends State<loginn> {

  final _key=GlobalKey<FormState>();
  bool _show=false;
  TextEditingController ctrl=TextEditingController();
  TextEditingController ctrl1=TextEditingController();
  TextEditingController ctrl2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = Colors.black;
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.chevron_left,color: Colors.cyanAccent,size: 30,),
        title:Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Row(
            children: [
              FadeInLeft(child: Text("Eat",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),)),SizedBox(width:10,),
              FadeOutUpBig(child: Text("this",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold))),SizedBox(width:10,),
              Text("Much !",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold)),SizedBox(width:10,),
            ],
          ),
        ) ,
        backgroundColor: backgroundColor,
        actions: [

],
      ),
      backgroundColor: backgroundColor,

      body: Form(
        key: _key,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,top:40),
              child: SizedBox(width: 370,
                child: FadeInLeft(
                  child: TextFormField(
                      style: TextStyle(color: Colors.yellow),

                    validator: (input){

                    if(input==null || input.length<3)
                    {
                      return "Pls Enter the Username";
                    }
                    return null;
                  },
                    controller: ctrl,
                    decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange, width: 2.0), // Change color when focused
                      ),
                      hintText: "First Name",hintStyle: TextStyle(color: Colors.grey),
                      labelText: "First Name",labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 20,top: 15),
              child: SizedBox(width: 370,
                child: FadeInUp(
                  child: TextFormField(
                      style: TextStyle(color: Colors.yellow),

                  validator: (input)
                  {
                    if(!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(input!))
                    {
                      return "Pls enter the Valid phone number credentials";
                    }
                    return null;
                  
                  
                  },
                    keyboardType: TextInputType.numberWithOptions(),
                    controller: ctrl2,
                    decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange, width: 2.0), // Change color when focused
                      ),
                      hintText: "Phone Number",hintStyle: TextStyle(color: Colors.grey),
                      labelText: "Phone Number",labelStyle: TextStyle(color: Colors.white),
                  
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 15),
              child: SizedBox(width: 370,
                child: FadeInRight(
                  child: TextFormField(
                    style: TextStyle(color: Colors.yellow),
                    obscureText: true,
                    validator: (input){

                    if(!RegExp(r"^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\S+$).{8,20}$").hasMatch(input!))
                    {
                      return "Pls enter the Valid credentials";
                    }
                    return null;

                  },
                    controller: ctrl1,
                    decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange, width: 2.0), // Change color when focused
                      ),
                      hintText: "Password",hintStyle: TextStyle(color: Colors.grey),
                      labelText: "Password",labelStyle: TextStyle(color: Colors.white),

                    ),
                  ),
                ),

              ),
            ),
            SizedBox(height:25 ),
            HeartBeat(
              child: Container(
                height: 60,
                width: 200,
                  decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(20), // Rounded corners
            ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0, // Set elevation to 0 to avoid shadow
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Match the container's radius
                    ),

                  ),
                  onPressed: () {
                    if(_key.currentState!.validate())
                    {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sucessfully Registered")));
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>sign()));
                    }
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.cyan), // Text color
                  ),
                ),
              ),
            ),




          ],
        ),
      ),

    );
  }
}
