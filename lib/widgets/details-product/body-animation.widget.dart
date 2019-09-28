import 'package:flutter/material.dart';

class BodyAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> sizebodyAnim;

  BodyAnimation({@required this.controller}) :
  
      sizebodyAnim = Tween(
        begin: 500.0,
        end: 700.0,

      ).animate(
        CurvedAnimation(parent: controller, curve: Interval(0.0, 1.0)));

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      
      builder: (context, child) {
        return Positioned(
        height: sizebodyAnim.value,
        left: 0,
        right: 0,
        top: 0,
        
          child: Hero(
           
            
            transitionOnUserGestures: true, 
            tag: "opa",
            
            child: Image.asset("assets/img1.jpg",fit: BoxFit.cover,),
            ),
     
      );
      
      }
      
    );
  }
}
