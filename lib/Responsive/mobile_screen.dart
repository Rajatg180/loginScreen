import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      	child: Container(
          decoration: BoxDecoration(
             gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(216, 217, 231, 0.6),
                  Color.fromRGBO(255, 255, 255, 1),
                ]
              ), 
           ),
	        child: Column(
	          children: [
              Container(
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
	                  Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(11, 17, 134, 0.6)),),
	                ],
	              ),
              )
	          ],
          )
	      ),
      )
    );
  }
}
