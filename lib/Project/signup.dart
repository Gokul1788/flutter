import 'package:animate_do/animate_do.dart';
import 'package:firebase_auth/Project/polling%20both.dart';
import 'package:firebase_auth/Project/screen4.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
class sign extends StatefulWidget {
  const sign({super.key});

  @override
  State<sign> createState() => _signState();
}

class _signState extends State<sign> {
  TextEditingController CTRL =TextEditingController(text: "+91  ",);
  TextEditingController pass =TextEditingController();

  final TextEditingController pinput=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black87,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/panda.png"))),
                ),
                BounceInUp(child: Text("Hello",style: TextStyle(color: Colors.cyanAccent,fontSize: 18,fontStyle: FontStyle.italic),)),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ElasticIn(child: Text("Fun Awaits!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
              ),
              SizedBox(height: 10,),
            ],
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: FlipInX(child: Text("Dive In and Join the Fun!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
          ),SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 15),
                child: SizedBox(width: 370,
                  child: TextFormField(
                    obscureText: true,
                    style: TextStyle(color: Colors.cyan),
                    validator: (input)
                    {
                      if(!RegExp(r"^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\S+$).{8,20}$").hasMatch(input!))
                      {
                        return "Pls enter the Valid credentials";
                      }
                      return null;


                    },
                    controller: pass,
                    decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 2.0), // Change color when focused
                      ),
                      hintText: "Password",hintStyle: TextStyle(color: Colors.grey),
                      labelText: "Password",labelStyle: TextStyle(color: Colors.white),

                    ),


                  ),
                ),
              ),


            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 15),
                child: SizedBox(width: 370,
                  child: TextFormField(
                    style: TextStyle(color: Colors.cyan),
                   validator: (input)
                  {
                    if(!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(input!))
                    {
                      return "Pls enter the Valid phone number credentials";
                    }
                    return null;


                  },
                    controller: CTRL,
                    decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 2.0), // Change color when focused
                      ),
                      hintText: "Phone Number",hintStyle: TextStyle(color: Colors.grey),
                      labelText: "Phone Number",labelStyle: TextStyle(color: Colors.white),

                    ),


                  ),
                ),
              ),


            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text("OTP",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),),
              ],
            ),
          ),SizedBox(height: 15,),
          Pulse(
            child: Pinput(
              controller: pinput,
              length: 5,
              onCompleted: (pin){
                print("completed pin:$pin");
              },
              defaultPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: TextStyle(fontSize: 20,color: Colors.white),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5)
                )

              ),


            ),
          ),
          SizedBox(height: 25,),

          SlideInLeft(
            child: Container(
              width: 200, // Set the width of the button
              height: 60, // Set the height of the button
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Scr4()));
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.cyan), // Text color
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Lacking the Account...",style: TextStyle(fontSize: 15,color: Colors.white,fontStyle: FontStyle.italic),),
              SizedBox(width: 5,),
              GestureDetector(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>loginn()));
                  },

    child: Text("Signup",style: TextStyle(fontSize: 15,color: Colors.orange,fontWeight: FontWeight.bold),)),
            ],
          )

        ],
      ),

    );
  }
}

