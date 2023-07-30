import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Electronics extends StatefulWidget {
  const Electronics({super.key});

  @override
  State<Electronics> createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  @override
  Widget build(BuildContext context) {
    List c_1=['View all','Bluetooth Headphones','Wired Headphones'];
    List c_2=['View all','Smart Watch','Fitbands'];
    List c_3=['View all','Power Banks','Mobile Chargers','Data Storage','Mobile Holders','Cables & Connectors','Gaming Accessories','Computer Accessories','Camera Accessories'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Row(
          children: [
            Text('Office Supplies & Stationery',style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Audio',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
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
                Text('Smart Wearables',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
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
                Text('Accessories',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
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
          ],
        ),
      ),
    );
  }
}
