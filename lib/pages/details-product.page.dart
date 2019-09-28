import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/details-product/body-animation.widget.dart';
import 'package:shopping_app/widgets/details-product/bottom-animation.widget.dart';

class DetailsProduct extends StatefulWidget {
  @override
  _DetailsProductState createState() => _DetailsProductState();

  

}


class _DetailsProductState extends State<DetailsProduct> with TickerProviderStateMixin {

  AnimationController _controller;
  AnimationController _controller2;
  Animation<double> sizeImage;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this, 
      duration: Duration(milliseconds: 400));

      _controller2 = AnimationController(
      vsync: this, 
      duration: Duration(milliseconds: 300));
       WidgetsBinding.instance.addPostFrameCallback((_){
         _controller.forward();
       });
     
    
  }
  @override
  void didChangeDependencies() {
  
    super.didChangeDependencies();
    
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        child: GestureDetector(
          onVerticalDragUpdate: (details){
            print("opaa ${details.delta.dy}");
            if(details.delta.dy > 0){
              _controller.reverse(); 
              _controller2.forward();
            }else{
              _controller.forward();
              _controller2.reverse();
            }
          },
          child: Stack(
            children: <Widget>[
              BodyAnimation(controller: _controller2,),
              Container(),
              BottomAnimation(controller: _controller,),
            ],
          ),
        ),
      ),
    );
  }
}