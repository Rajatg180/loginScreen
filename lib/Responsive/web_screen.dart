import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      	child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.35),
          child: Container(
          height: MediaQuery.of(context).size.height*1,
          decoration: BoxDecoration(
             gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(216, 217, 231, 0.6),
                  Color.fromRGBO(255, 255, 255, .2),
                ]
              ), 
           ),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Container(
                 padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05),
                 height: MediaQuery.of(context).size.height*0.45,
                 child: Center(
                   child: Lottie.asset("assets/38435-register.json"),
                 ),
               ),
                Container(
                 child: Center(
                  child: Text('Login',style: TextStyle(fontSize: 20,color: Color.fromRGBO(11, 17, 134, 0.6),),),
                 ),
               ),
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(143, 148, 251, .2),
                                    blurRadius: 5.0,
                                    offset: Offset(0, 10)
                                  )
                                ]
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey))
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Username",
                                        hintStyle: TextStyle(color: Colors.grey[400])
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        hintStyle: TextStyle(color: Colors.grey[400])
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 30,),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(143, 148, 251, .6),
	                                  Color.fromRGBO(143, 148, 251, 1),
                                  ]
                                )
                              ),
                              child: Center(
                                child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              ),
                            ),
                            SizedBox(height: 70,),
                            Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(11, 17, 134, 0.6))),
                          ],
                        ),
               )
                    ],
           )
                ),
                ),
      )
    );
  }
}