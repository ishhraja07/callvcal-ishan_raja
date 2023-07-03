import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static String routeName='/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile"),
        leading: GestureDetector(child: Icon(Icons.arrow_back_ios)),
      ),
      body:
      SingleChildScrollView(
        child: GestureDetector(
          onTap: (){
            print('pressed');
          },
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: SizedBox(
                    width: 115,
                  height: 115,
                  child: Stack(
                    clipBehavior: Clip.none ,
                    fit: StackFit.expand,
                    children: [
                      CircleAvatar(backgroundImage: AssetImage('assets/images/profile.png')
                        ,),
                      Positioned(
                        bottom: 0,
                        right: -6,
                        child: SizedBox(height: 42,
                          width: 42,
                          child: FloatingActionButton(onPressed: () {  },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: BorderSide(color: Colors.white),
                            ),
                            backgroundColor: Colors.black,
                            child:
                            Ink.image(image: AssetImage('assets/images/camera.png')),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[100],
                    ),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Image.asset('assets/images/user.png',width: 22,),
                        SizedBox(width: 20,),
                        Expanded(child: Text("My Account"),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[100],
                    ),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Image.asset('assets/images/bell.png',width: 22,),
                        SizedBox(width: 20,),
                        Expanded(child: Text("Notifications"),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[100],
                    ),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Image.asset('assets/images/settings.png',width: 22,),
                        SizedBox(width: 20,),
                        Expanded(child: Text("Settings"),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[100],
                    ),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Image.asset('assets/images/user.png',width: 22,),
                        SizedBox(width: 20,),
                        Expanded(child: Text("Help Center"),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[100],
                    ),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Image.asset('assets/images/logout.png',width: 22,),
                        SizedBox(width: 20,),
                        Expanded(child: Text("Log Out"),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
          topRight: Radius.circular(40)),
          
          boxShadow: [BoxShadow(offset: Offset(0,-15),
          blurRadius: 20,
          color: Color(0xFFDADADA).withOpacity(0.15),),],
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: null, icon: Icon(Icons.home,color: Colors.blue,size: 34,)
                ,),
              IconButton(onPressed: null, icon: Icon(Icons.drive_eta_rounded,color: Colors.blue,size: 34,)
                ,),
              IconButton(onPressed: null, icon: Icon(Icons.chat_bubble,color: Colors.blue,size: 34,)
                ,),
              IconButton(onPressed: null, icon: Icon(Icons.person,color: Colors.blue,size: 34,)
                ,)
            ],
          ),
        ),
      ),
    );
  }
}
