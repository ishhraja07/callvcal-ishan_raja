import 'package:flutter/material.dart';
class ReelDetail extends StatefulWidget {
  const ReelDetail({super.key});

  @override
  State<ReelDetail> createState() => _ReelDetailState();
}

class _ReelDetailState extends State<ReelDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Text('@karennne - 1-28',style: TextStyle(color: Colors.white),),
        ],),
        Row(
          children: [
            Text('#avicii #wflove',style: TextStyle(color: Colors.white),)
          ],
        ),
        SizedBox(height: 30,),
      ],
    );
  }
}
