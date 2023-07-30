import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Footwear extends StatefulWidget {
  const Footwear({super.key});

  @override
  State<Footwear> createState() => _FootwearState();
}

class _FootwearState extends State<Footwear> {
  @override
  Widget build(BuildContext context) {
    List c_1=['View all','Heels and sandals','Flats','Boots','Flipflops & Slippers','Bellies and Ballerinas'];
    List c_2=['View all','Men Causal Shoes','Men Sports Shoes','Men Flip Flops and Sandals','Men Formal Shoes','Loafers'];
    List c_3=['View all','Boys Shoes','Girls Shoes','Casual Shoes','FlipFlops & Slippers','Sandals'];
    List c_4=['View all','Backpacks','Handbags','Slingbags','Wallets','Clutches'];
    List c_5=['Backpacks','Waist Bags','Crossbody Bags & Sling Bags'];
    List c_6=['View all','Duffel&Trolley Bags','Crossbody & Sling Bags'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Row(
          children: [
            Text('Bags & Footwear',style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Women Footwear',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: c_1.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6,), itemBuilder: (context,index){
                return Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                      ),
                    ],
                    color: Colors.white,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('lib/images/star.png',height: 40,width: 70,),
                      SizedBox(height: 12,),
                      Text("${c_1[index]}",textAlign: TextAlign.center,),
                    ],
                  ),
                );
              }),
            ),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Men Footwear',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: c_2.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6,), itemBuilder: (context,index){
                return Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                      ),
                    ],
                    color: Colors.white,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('lib/images/star.png',height: 40,width: 70,),
                      SizedBox(height: 12,),
                      Text("${c_2[index]}",textAlign: TextAlign.center,),
                    ],
                  ),
                );
              }),
            ),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Kids Footwear',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: c_3.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6,), itemBuilder: (context,index){
                return Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                      ),
                    ],
                    color: Colors.white,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('lib/images/star.png',height: 40,width: 70,),
                      SizedBox(height: 12,),
                      Text("${c_3[index]}",textAlign: TextAlign.center,),
                    ],
                  ),
                );
              }),
            ),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Women Bags',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: c_4.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6,), itemBuilder: (context,index){
                return Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                      ),
                    ],
                    color: Colors.white,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('lib/images/star.png',height: 40,width: 70,),
                      SizedBox(height: 12,),
                      Text("${c_4[index]}",textAlign: TextAlign.center,),
                    ],
                  ),
                );
              }),
            ),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Men bags',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: c_5.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6,), itemBuilder: (context,index){
                return Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                      ),
                    ],
                    color: Colors.white,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('lib/images/star.png',height: 40,width: 70,),
                      SizedBox(height: 12,),
                      Text("${c_5[index]}",textAlign: TextAlign.center,),
                    ],
                  ),
                );
              }),
            ),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Travel Bags,Luggage and Accessories',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: c_6.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6,), itemBuilder: (context,index){
                return Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                      ),
                    ],
                    color: Colors.white,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('lib/images/star.png',height: 40,width: 70,),
                      SizedBox(height: 12,),
                      Text("${c_6[index]}",textAlign: TextAlign.center,),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
