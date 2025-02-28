
import 'package:firebase_auth/list%20session%20login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class listt extends StatefulWidget {
  const listt({super.key});

  @override
  State<listt> createState() => _listtState();
}

class _listtState extends State<listt> {
  TextEditingController namectrl= TextEditingController();
  TextEditingController passctrl= TextEditingController();
  List<dynamic> Store=[];

  void signup() async{
    SharedPreferences SP= await SharedPreferences.getInstance();
    await SP.setString("username",namectrl.text );
    await SP.setString("userPassword",passctrl.text );
     Store.add({"username":namectrl.text,"userpassword":passctrl.text});
     Store.map((x)
     {

     print("Username:${x["username"]},Password:${x["userpassword"]}");


     }).toList();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("useradded")));

print(Store);
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Column(
  children: [
    TextFormField(
      controller:namectrl,
    ),
    TextFormField(
      controller: passctrl,
    ),
    ElevatedButton(onPressed: (){

     // Navigator.push(context, MaterialPageRoute(builder: (context)=>liste()));

    }, child: Text("signup")),
    ElevatedButton(onPressed: (){

      signup();

    }, child: Text("Register"))
  ],
),

    );
  }
}
// mport 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class StoreCredentials extends StatefulWidget {
//   const StoreCredentials({super.key});
//
//   @override
//   State<StoreCredentials> createState() => _StoreCredentialsState();
// }
//
// class _StoreCredentialsState extends State<StoreCredentials> {
//   TextEditingController nameCtrl = TextEditingController();
//   TextEditingController passCtrl = TextEditingController();
//   List<dynamic> store = [];
//
//   void signup() async {
//     SharedPreferences sp = await SharedPreferences.getInstance();
//
//     await sp.setString("username", nameCtrl.text);
//     await sp.setString("userPassword", passCtrl.text);
//
//     store.add({"username": nameCtrl.text, "password": passCtrl.text});
//
//     // Example of how to use the map function on the list
//     store.map((user) {
//       print("Username: ${user['username']}, Password: ${user['password']}");
//     }).toList();
//
//     ScaffoldMessenger.of(context)
//         .showSnackBar(SnackBar(content: Text("User added")));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextFormField(
//             controller: nameCtrl,
//             decoration: InputDecoration(labelText: "Username"),
//           ),
//           TextFormField(
//             controller: passCtrl,
//             decoration: InputDecoration(labelText: "Password"),
//             obscureText: true,
//           ),
//           ElevatedButton(
//             onPressed: () {
//               signup();
//             },
//             child: Text("Sign up"),
//           ),
//         ],
//       ),
//     );
//   }
// }

// i