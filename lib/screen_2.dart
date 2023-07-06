import 'package:flutter/material.dart';

import 'images/feed_view.dart';
class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    var s1="The Round";
    var s2="Roddy Rounddicch";
    final size= MediaQuery.of(context).size;
    var s3="1.7M videos";
    List<Widget> tabBarviews= [
      FeedView(),
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.mobile_screen_share_rounded),
            ],
          ),
        ),
        body: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('lib/images/man.png',),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(s1,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    SizedBox(height: 5,),
                    Text(s2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey),),
                    Text(s3,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey),),
                    SizedBox(height: 10,),
                    Container(
                      // margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Row(
                        children: [
                          Image.asset('lib/images/add.png',height: 15,width: 15,),
                          Text(' Add to Favourites ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
                height: size.height,
                child: TabBarView(children: tabBarviews)),
          ],
        ),
      ),
    );
  }
}
