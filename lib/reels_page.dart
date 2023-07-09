import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen1/side_action_bar.dart';

import 'images/reel_detail.dart';
class ReelsPage extends StatefulWidget {
  const ReelsPage({super.key});

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              Image.asset('lib/images/heart.png',height: 12,width: 12,),
              Text(' COOL H',style: GoogleFonts.abel(),),
              SizedBox(width: 50,),
              Icon(Icons.arrow_back_ios,size: 12,color: Colors.white,),
              Card(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Travel'),
                ),),
              Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,),
              SizedBox(width: 140,),
              Image.asset('lib/images/menu.png',height: 20,width: 20,color: Colors.white,),
            ],
          ),
        ),
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context,index){
          return Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                      image: AssetImage('lib/images/image_${index+1}.jpg')
                ),
              ),
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.black.withOpacity(.3),Colors.transparent],
                          begin: Alignment(0,-0.75),
                          end: Alignment(0,0.11),
                        )
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.black.withOpacity(.3),Colors.transparent],
                            end: Alignment(0,-0.75),
                            begin: Alignment(0,0.11),
                          )
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Flexible(
                              flex: 15,
                                child: ReelDetail(),
                            ),
                            Flexible(
                              flex: 2,
                                child: ReelSideAction())
                          ],

                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
