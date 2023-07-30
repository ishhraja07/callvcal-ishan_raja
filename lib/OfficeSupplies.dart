import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Offuce extends StatefulWidget {
  const Offuce({super.key});

  @override
  State<Offuce> createState() => _OffuceState();
}

class _OffuceState extends State<Offuce> {
  @override
  Widget build(BuildContext context) {
    List c_1=['View All','Pens & pencils','Diaries & Notebooks','Art & Craft Supplies','Files & Desks Organizers','Adhesives & Tapes'];
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
                Text('Office Supplies & Stationery',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
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
          ],
        ),
      ),
    );

  }
}
