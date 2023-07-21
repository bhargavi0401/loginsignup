import 'package:flutter/material.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({Key? key}) : super(key: key);

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/screen1.png'), fit: BoxFit.cover)),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(right:25,top:55),
              alignment: Alignment.topRight,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: 65,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Skip', style: TextStyle(color: Colors.black),),
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFFFEFD7),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(left:25,right:25),
              alignment: Alignment.center,
              padding: EdgeInsets.only(top:350),
              child: Column(
                children: [
                  SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, 'signin');
                      },
                      icon: Icon(Icons.mail),
                      label: Text('Continue with Email', style: TextStyle(fontSize: 15),),
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF4DAE60),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.apple),
                      label: Text('Continue with Apple', style: TextStyle(fontSize: 15),),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Continue with Google', style: TextStyle(fontSize: 15),),
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF5283ED),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Continue with Facebook', style: TextStyle(fontSize: 15),),
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF425893),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    ),
                  ),

                  ],
              ),
            ),
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
            Container(
              margin: EdgeInsets.only(right:25,left:25,bottom: 25),
              alignment: Alignment.bottomCenter ,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'By clicking "Continue with Email/Apple/Google/Facebook" above, you agree to 7krave\'s ',style: TextStyle(color: Colors.black,fontSize: 13)),
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
    );
  }
}
