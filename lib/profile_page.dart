import 'package:comment_bar/tabs/feed_view.dart';
import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var user='@User';
   List<Widget> tabs= [
     Tab(
       icon: Icon(
         Icons.feed,
         color: Colors.grey,
       ),
     ),
     Tab(
      icon: ImageIcon(
         AssetImage('lib/images/heart.png'),
         color: Colors.grey,
         size: 24,
       ),
     )
   ];
   List<Widget> tabBarviews= [
     FeedView(),
   ];
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: (
        Row(
          children: [
            SizedBox(width: size.width/(2.8),),
            Text("NAME",style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(width: 30,),
            Icon(Icons.arrow_drop_down,size: 30,),
            SizedBox(width: size.width/5,),
            Icon(Icons.more_horiz,size: 25,),
          ],
        )
        ),
      ),
      body: ListView(
        children: [
          Divider(color: Colors.transparent,),
          Column(

            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('lib/images/profile.png',),
                  ),
                ),
              ),
              Text(user,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.symmetric(horizontal: 32.0,vertical: 9.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey)
                    ),
                    child: Text('Edit Profile',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey)
                    ),
                    child: Image.asset('lib/images/add.png',height: 20,width: 20,),
                  ),
                ],
              )
            ],
          ),
          TabBar(tabs: tabs),
          SizedBox(
            height: size.height,
              child: TabBarView(children: tabBarviews))
        ],
      ),
    ));
  }
}
