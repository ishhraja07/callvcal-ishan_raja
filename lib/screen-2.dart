import 'package:flutter/material.dart';
class Screen_2 extends StatefulWidget {
  const Screen_2({super.key});

  @override
  State<Screen_2> createState() => _Screen_2State();
}

class _Screen_2State extends State<Screen_2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 35,),
            Container(
              height: 60,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black,
                  ),
                  bottom: BorderSide(
                    color: Colors.black,
                  )
                ),
              ),
              child: Row(
                children: [
                  SizedBox(height: 100,width: 90,),
                  Text('Search Product, name, brand'),
                ],
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                border: Border(
                    top: BorderSide(
                      color: Colors.transparent,
                    ),
                    bottom: BorderSide(
                      color: Colors.transparent,
                    )
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20,),
                 Image.asset('lib/images/back-arrow.png',height: 25,width: 25,color: Colors.grey,),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      SizedBox(height: 5,),
                      Text('Boat Earphones'),
                      Text('in Earphones',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(width: 190,),
                  Image.asset('lib/images/up.png'),
                ],
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                border: Border(
                    top: BorderSide(
                      color: Colors.transparent,
                    ),
                    bottom: BorderSide(
                      color: Colors.transparent,
                    )
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Image.asset('lib/images/back-arrow.png',height: 25,width: 25,color: Colors.grey,),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      SizedBox(height: 5,),
                      Text('Killer Jeans'),
                      Text('in jeans',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(width: 220,),
                  Image.asset('lib/images/up.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
