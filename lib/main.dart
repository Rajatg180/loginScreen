
import 'package:flutter/material.dart';
import 'package:loginscreen/Responsive/mobile_screen.dart';
import 'package:loginscreen/Responsive/web_screen.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatelessWidget {
  
  final webScren=800;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder( 
      builder: (context,constraints){
        if(constraints.maxWidth>webScren){
          return WebScreen();
        }
        return MobileScreen();
      },
    );
  }
}