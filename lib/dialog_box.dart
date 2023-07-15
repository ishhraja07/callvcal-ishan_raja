import 'package:flutter/material.dart';
class DialogBox extends StatefulWidget {
  const DialogBox({super.key});

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dialog(
        backgroundColor: Colors.blue[600],
        child: Container(
          height: 340,
          width: 600,
          child: Column(
            children: [
              SizedBox(height: 15,),
              Text('Order Received',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Vehicle Name',style: TextStyle(color: Colors.white,fontSize: 16),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('Pickup time : 10:30 am 20 jan 2023',style: TextStyle(color: Colors.white,fontSize: 16),)
                      ],
                    ),
                    SizedBox(height: 2,),
                    Row(
                      children: [
                        Text('Pickup Address : Full Address',style: TextStyle(color: Colors.white,fontSize: 16),)
                      ],
                    ),
                    SizedBox(height: 2,),
                    Row(
                      children: [
                        Text('Drop Address : Full Address',style: TextStyle(color: Colors.white,fontSize: 16),)
                      ],
                    ),
                    SizedBox(height: 2,),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text('Driver Name: Ankit Kumar',style: TextStyle(color: Colors.white,fontSize: 20),),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.pink)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                        child: Text('Open App',style: TextStyle(color: Colors.white,fontSize: 18),),
                      ),
                    ),
                    SizedBox(width: 50,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.red)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                        child: Text('Accept Order',style: TextStyle(color: Colors.white,fontSize: 18),),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
