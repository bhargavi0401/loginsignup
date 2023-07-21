import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySignIn extends StatefulWidget {
  const MySignIn({Key? key}) : super(key: key);

  @override
  State<MySignIn> createState() => _MySignInState();
}

class _MySignInState extends State<MySignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/screen2.png'), fit: BoxFit.cover)),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
                margin: EdgeInsets.only(left:25,top:55),
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xFFD6F2F1),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        icon: Icon(Icons.arrow_back, color: Colors.black,),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Text('Sign in',style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)
                  ],
                )
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(left:25,right:25),
                alignment: Alignment.center,
                padding: EdgeInsets.only(top:280),
                child: Column(
                  children: [

                    SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Color(0xFFEDF7F7),
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Color(0xFFEDF7F7)),),
                          labelText: 'Enter your Email',
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Color(0xFFEDF7F7),
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.square_outlined, color: Colors.black ,
                                ),
                                SizedBox(width: 8,),
                                Text('Remember Me', style: TextStyle(color: Colors.black, fontSize: 15),),
                              ],
                            ),
                            Text('Forgot Password?',style: TextStyle(color: Colors.red, fontSize: 15,),)
                          ],
                        )
                    ),
                    SizedBox(height: 20,),

                    SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Sign In', style: TextStyle(fontSize: 15),),
                        style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF4DAE60),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.only(right:25,left:25,bottom: 120),
                      alignment: Alignment.bottomCenter,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(text: 'Don\'t have an account? ',style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Sign Up', style: TextStyle(color: Color(0xFF4DAE60),fontSize: 15, fontWeight: FontWeight.bold)),
                            ]
                        ),
                      ),
                    ),
                    SizedBox(height: 35,),
                    Container(
                      alignment: Alignment.bottomCenter ,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(text: 'By clicking "Sign In" above, you agree to 7krave\'s ',style: TextStyle(color: Colors.black,fontSize: 13)),
                              TextSpan(text: 'Terms & Conditions ', style: TextStyle(color: Colors.orangeAccent,fontSize: 13)),
                              TextSpan(text: 'and ',style: TextStyle(color: Colors.black,fontSize: 13)),
                              TextSpan(text: 'Privacy Policy', style: TextStyle(color: Colors.orangeAccent,fontSize: 13)),
                              TextSpan(text: '.',style: TextStyle(color: Colors.black,fontSize: 13)),
                            ]
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
