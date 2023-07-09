import 'package:flutter/material.dart';
class ReelSideAction extends StatefulWidget {
  const ReelSideAction({super.key});

  @override
  State<ReelSideAction> createState() => _ReelSideActionState();
}

class _ReelSideActionState extends State<ReelSideAction> {
  var _iconSize=28.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,

          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  child: Image.asset('lib/images/man.jpg'),
                  radius: 20,
                ),
              SizedBox(height: 10,),
              IconButton(
              onPressed: () => {}, icon: Icon (Icons. favorite_outline),
          iconSize: _iconSize,color: Colors.white,
        ), // IconButton
        Text("1.34k",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        SizedBox(height: 8,),
        IconButton(
        onPressed: () => {}, icon: Icon(Icons.chat_bubble_outline), iconSize: _iconSize,
          color: Colors.white,
        ), // IconButton
        Text('22',
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        SizedBox(height: 8,),
        IconButton(
        onPressed: () => {},
        icon: Icon (Icons.send_outlined),color: Colors.white,
        iconSize: _iconSize, ), // IconButton
        IconButton( onPressed: () => {},
        icon: Icon (Icons.more_horiz), iconSize: _iconSize,
          color: Colors.white,
        ),
                SizedBox(height: 8,),
        ]// IconButton
        ), // Column
        ),
      ],
    );
  }
}
