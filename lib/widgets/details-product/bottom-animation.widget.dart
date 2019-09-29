import 'package:flutter/material.dart';

import 'card-product.widget.dart';

class BottomAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> sizeBottomAnim;
  final double tam;

  BottomAnimation({@required this.controller, @required this.tam}) :
  
      sizeBottomAnim = Tween(
        begin:20.0,
        end: tam * 0.6,

      ).animate(
        CurvedAnimation(parent: controller, curve: Interval(0.0, 0.8)));

  @override
  Widget build(BuildContext context) {
        return Positioned(
        height: sizeBottomAnim.value,
        left: 0,
        right: 0,
        bottom: 0,
        
          child: Stack(
            
            
            children: <Widget>[
              
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: controller.isDismissed? sizeBottomAnim.value * 0.0: sizeBottomAnim.value,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
                    color: Colors.white,
                  ),
                  child: CartProduct(),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.topCenter,
                  height: 34,
                  width: 34,
                  child: FloatingActionButton(
                    backgroundColor: Colors.orangeAccent,
                    elevation: 8,
                   onPressed: (){
                     if(controller.isDismissed){
                     controller.forward();
                     }else{
                       controller.reverse();
                     }
                   },
                    child: controller.isDismissed ?Icon(Icons.arrow_drop_up):Icon(Icons.arrow_drop_down),
                  ),
                ),
              ),
            ],
          ),
     
      );
     
    
  }
}





