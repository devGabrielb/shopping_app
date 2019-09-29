import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/details-product/body-animation.widget.dart';
import 'package:shopping_app/widgets/details-product/bottom-animation.widget.dart';

class DetailsProduct extends StatefulWidget {
  @override
  _DetailsProductState createState() => _DetailsProductState();

  

}


class _DetailsProductState extends State<DetailsProduct> with TickerProviderStateMixin {

  AnimationController _controller;
  
  Animation<double> sizeImage;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this, 
      duration: Duration(milliseconds: 300));

    
      
    
  }
  

  @override
  void dispose() {
    _controller.dispose();
   
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(builder: _details,animation: _controller,);
  }
 
  Widget _details(context, child) {
    var tam = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: tam.height,
        child: GestureDetector(
          onVerticalDragUpdate: (details){
            print("opaa ${details.delta.dy}");
            if(details.delta.dy > 5){
              _controller.reverse(); 
            
            }else{
              _controller.forward();
             
            }
          },
          child: Stack(
            
            children: <Widget>[
              BodyAnimation(controller: _controller,tam: tam.height,),
              
              BottomAnimation(controller: _controller, tam: tam.height,),
            ],
          ),
        ),
      ),
    );
  }
}