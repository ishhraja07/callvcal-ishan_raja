import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Kids extends StatefulWidget {
  const Kids({super.key});

  @override
  State<Kids> createState() => _KidsState();
}

class _KidsState extends State<Kids> {
  List c_1=['Kids clothing','Girl sets','Dresses','Boy Sets','Ethinic wear','Top wear','Bottom wear','Winter wear','Nightwear'];
  List c_2=['Onesies & Rompers','Baby Sets','Ethinicwear'];
  List c_3=['All Toys and Gamers','Soft Toys','Bags & Bagpacks','Footwear','Stationery','Watches'];
  List c_4=['View all','Baby Bedding & Accessories','Newborn Care','Diapers'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Row(
          children: [
            Text('Kids',style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Boys & Girls 2+ Years',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
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
                Text('Infant 0-2 Years',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
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
                Text('Toys & Accessoires',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
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
                Text('Baby Care',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
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
          ],
        ),
      ),
    );
  }
}
