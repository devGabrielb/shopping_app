import 'package:flutter/material.dart';

class BottomAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> sizeBottomAnim;

  BottomAnimation({@required this.controller}) :
  
      sizeBottomAnim = Tween(
        begin: 0.0,
        end: 280.0,

      ).animate(
        CurvedAnimation(parent: controller, curve: Interval(0.0, 0.8)));

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      
      builder: (context, child) {
        return Positioned(
        height: sizeBottomAnim.value,
        left: 0,
        right: 0,
        bottom: 0,
        
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              color: Colors.blue,
            ),
          ),
     
      );
      
      }
      
    );
  }
}





