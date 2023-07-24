import 'package:flutter/material.dart';
class Screen_1 extends StatelessWidget {
  const Screen_1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          backgroundColor: Colors.blue,
          title: Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on,color: Colors.white,),
                      Container(
                        height: 20,
                        width:30,
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            border: Border.all(
                                color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: [
                            Text('500 m',style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      SizedBox(width: 2,),
                      Text('501301 Rampally',style: TextStyle(color: Colors.white,fontSize: 15),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Image.asset('lib/images/delivery.png',height: 20,width: 30,),
                      Text('Delivery - Address', style: TextStyle(fontSize: 12,color: Colors.orange,fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
              SizedBox(width: 50,),
              Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 50,),
                      Icon(Icons.shopping_cart,color: Colors.white,size: 40,),
                      SizedBox(width: 20,),
                      Icon(Icons.notifications,size: 40,color: Colors.white,),
                    ],
                  )
                ],
              ),
              
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.favorite,color: Colors.red,),
                Text('COOL H',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                SizedBox(width: 20,),
                Container(
                  height: 45,
                  width: 240,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search,color: Colors.grey,),
                      Text('Search Product',style: TextStyle(color: Colors.grey),),
                      
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Image.asset('lib/images/down.png',height: 50,width: 50,),
              ],
            ),
            Image.asset('lib/images/sale.png'),
          ],
        ),
      ),
    );
  }
}
