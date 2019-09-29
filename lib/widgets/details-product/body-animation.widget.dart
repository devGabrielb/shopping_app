import 'package:flutter/material.dart';

class BodyAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> sizebodyAnim;
  final double tam;

  BodyAnimation({@required this.controller, @required this.tam}) :
  
      sizebodyAnim = Tween(
        begin: tam,
        end: tam * 0.7,

      ).animate(
        CurvedAnimation(parent: controller, curve: Interval(0.0, 0.8)));

  @override
  Widget build(BuildContext context) {
        return Positioned(
        height: sizebodyAnim.value,
        left: 0,
        right: 0,
        top: 0,
        
          child: Container(
            child: Hero(
             
              
              
              tag: "opa",
              
              child: Image.asset("assets/img1.jpg",fit: BoxFit.cover,),
              ),
          ),
     
      );
      
    
  }
}
