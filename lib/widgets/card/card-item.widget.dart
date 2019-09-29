import 'package:flutter/material.dart';
import 'package:shopping_app/pages/details-product.page.dart';

class CardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          GestureDetector(
            onTap: (){
              Navigator.push(
              context,
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => DetailsProduct(),
              ),
              );
            },
            child: Container(
              height: 220,
              width: 160,    
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top:Radius.circular(24), bottom: Radius.circular(24)),
                  child: Hero(
                    tag: "opa",
                    child: Image.asset("assets/img1.jpg", fit:BoxFit.cover,)),
                ),
              
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("\$45", style: TextStyle(color: Colors.grey),),
                Icon(Icons.favorite, size: 16,),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0),
            child: Text("Camiseta Adidas",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}