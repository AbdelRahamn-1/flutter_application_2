import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  Menu({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 198, 180),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 120, 68, 48),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ), //لوعايزها تفاعليه
        // Icon(Icons.arrow_circle_left_outlined),لو عايزها مش تفاعليه
        actions: [
          // Icon(Icons.shopping_cart,color: Colors.black,),لو عايزها مش تفاعليه
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {},
          ), //لوعايزها تفاعليه
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHfoTysfPlY5RAk0hiOv-7cBwu2slR8FMdIQ&s',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width * 0.9,
                height: 250,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text('grilled chicken', style: TextStyle(fontSize: 22)),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.star, color: Colors.amber, size: 20),
              SizedBox(width: 5),
              Text('4', style: TextStyle(fontSize: 16)),
              SizedBox(width: 200),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(color: Colors.deepOrangeAccent,
              borderRadius:BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: const Color.fromARGB(255, 203, 142, 123),
                        child: Icon(Icons.remove_circle,color:Colors.white,
                        size: 30,),
                      ),
                      SizedBox(width: 20),
                    Text('1',style: TextStyle(color:Colors.black,fontSize: 30),),
                    SizedBox(width: 20),
                    Icon(Icons.add,color:Colors.white,
                        size: 30,),
                    ],
                  )
                ],
              ),
              ),
            ],
          ),
          SizedBox(width: 20),
Text('Description',style: TextStyle(color: Colors.black,fontSize: 40),),
SizedBox(width: 20),
Text('Grilled chicken + rice + drink with discount 25%',style: TextStyle(fontSize: 15),),
 SizedBox(width: 5),
Row(
  children: [
    Text('300EGP',style: TextStyle(fontSize: 30),),
    SizedBox(width: 130),
Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(color: Colors.deepOrangeAccent,
              borderRadius:BorderRadius.circular(50),),
              child: Text('Add To Cart',style: TextStyle(fontSize: 20),),)
  ],
),
 Divider(color: Colors.black,thickness: 2,),
Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(color: Colors.deepOrangeAccent,
              borderRadius:BorderRadius.circular(50),),
              child: Row(
                children: [
                  Text('Review',style: TextStyle(fontSize: 20),),
                  SizedBox(width: 300),
                  Icon(Icons.arrow_drop_down,size: 20,),
                ],
              ),
              ),
        ],
      ),
    );
  }
}
