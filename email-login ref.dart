// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_emailauth/emailauth/Next.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'emailauth/signin.dart';
//
// class login extends StatefulWidget {
//   const login({super.key});
//
//   @override
//   State<login> createState() => _loginState();
// }
//
// class _loginState extends State<login> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn _googleSignIn = GoogleSignIn(
//       clientId: "316432966189-ansicme35trd3k1ivtdje8ro1u4lemc3.apps.googleusercontent.com"
//   );
//
//
//   final _key = GlobalKey<FormState>();
//   bool _signup = false;
//   TextEditingController emailCtrl = TextEditingController();
//   TextEditingController passwordCtrl = TextEditingController();
//
//   a() {
//     setState(() {
//       emailCtrl.text.isNotEmpty && passwordCtrl.text.isNotEmpty
//           ? _signup = true
//           : _signup = false;
//     });
//   }
//
//   Future<void> signInWithEmailPassword() async {
//     try {
//       UserCredential userCredential = await _auth.signInWithEmailAndPassword(
//         email: emailCtrl.text,
//         password: passwordCtrl.text,
//       );
//
//
//       ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Logged in as ${userCredential.user!.email}')));
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => const next()),
//       );
//     } on FirebaseAuthException catch (e) {
//       if (e.code!=emailCtrl.text) {
//         ScaffoldMessenger.of(context)
//             .showSnackBar(SnackBar(content: Text('No user found for that email.')));
//       } else if (e.code !=passwordCtrl.text) {
//         ScaffoldMessenger.of(context)
//             .showSnackBar(SnackBar(content: Text('Wrong password provided for that user.')));
//       }
//     }
//   }
//
//
//
//   // Future<User?> signInWithGoogle() async {
//   //   try {
//   //     final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
//   //
//   //     final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
//   //     final AuthCredential credential = GoogleAuthProvider.credential(
//   //       accessToken: googleAuth.accessToken,
//   //       idToken: googleAuth.idToken,
//   //     );
//   //
//   //     UserCredential userCredential = await _auth.signInWithCredential(credential);
//   //     Navigator.push(
//   //       context,
//   //       MaterialPageRoute(builder: (context) => const next()),
//   //     );
//   //     return userCredential.user;
//   //   }
//   //   catch (e) {
//   //     print("Google Sign-In Error: $e");
//   //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Google Sign-In Failed: $e")));
//   //   }
//   // }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Log In",
//           style: TextStyle(fontWeight: FontWeight.bold, color: CupertinoColors.systemPurple),
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         child: Form(
//           key: _key,
//           child: Padding(
//             padding: const EdgeInsets.only(top: 150, bottom: 20.0, left: 50, right: 50),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Email TextField
//                 SizedBox(
//                   width: 300,
//                   child: TextFormField(
//                     controller: emailCtrl,
//                     onChanged: (i) {
//                       a();
//                     },
//                     decoration: InputDecoration(
//                       fillColor: Colors.white,
//                       filled: true,
//                       prefixIcon: Icon(CupertinoIcons.mail, color: Colors.black),
//                       hintText: "Enter Your Email",
//                       hintStyle: TextStyle(fontWeight: FontWeight.bold, color: CupertinoColors.inactiveGray),
//                       labelText: "Email",
//                       labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.pinkAccent),
//                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                     ),
//                     validator: (valid) {
//                       if (valid == null || valid.isEmpty) {
//                         return "Please Enter an Email";
//                       } else if (!RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$").hasMatch(valid)) {
//                         return "Please enter a valid email address";
//                       }
//                       return null;
//                     },
//                   ),
//                 ),
//                 SizedBox(height: 20),
//
//                 // Password TextField
//                 SizedBox(
//                   width: 300,
//                   child: TextFormField(
//                     controller: passwordCtrl,
//                     onChanged: (i) {
//                       a();
//                     },
//                     decoration: InputDecoration(
//                       fillColor: Colors.white,
//                       filled: true,
//                       prefixIcon: Icon(Icons.lock_outline, color: Colors.black),
//                       hintText: "Enter Your Password",
//                       hintStyle: TextStyle(fontWeight: FontWeight.bold, color: CupertinoColors.inactiveGray),
//                       labelText: "Password",
//                       labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.pinkAccent),
//                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                     ),
//                     obscureText: true,
//                     validator: (right) {
//                       if (right == null || right.isEmpty) {
//                         return "Please Enter Valid Password";
//                       }
//                       return null;
//                     },
//                   ),
//                 ),
//                 SizedBox(height: 20),
//
//                 // Login Button
//                 Visibility(
//                   visible: _signup,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       if (_key.currentState!.validate()) {
//                         signInWithEmailPassword();
//                       }
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.pinkAccent,
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal(left: Radius.circular(20), right: Radius.circular(20))),
//                     ),
//                     child: Text("LogIn"),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//
//                 // Redirect to Signup page
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => const Signup()));
//                   },
//                   child: Text(
//                     "Signup",
//                     style: TextStyle(color: Colors.pinkAccent, fontSize: 15, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 SizedBox(height: 20,),
//                 GestureDetector(
//                   onTap: (){
//                     signInWithGoogle();
//                   },
//                   child: Row(crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                           height:25,
//                           width: 25,
//                           child: Image(image: AssetImage("assets/google_logo.png"))),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 5),
//                         child: Text("SignIn with Google"),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }