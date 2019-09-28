import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/card/card-item.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var tam = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 30),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.menu,
                  size: 32,
                  color: Colors.black,
                ),
              ],
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text("HOLIDAY \nSNEAK PEEK",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 10,
            ),
            Text("SHOWING 160 ITEMS",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold)),

            SizedBox(height: 50,),
            Text("Our Biggest Hits",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),


                   SizedBox(height: 30,),
                        Container(
                          height: 300,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              CardItem(),
                              
                            ],
                          )
                          ),
                       
          ],
        ),
      ),
    );
  }
}
