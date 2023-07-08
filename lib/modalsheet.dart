import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:screen_3/comment_box.dart';
import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
class ModalSheet extends StatefulWidget {
  const ModalSheet({super.key});

  @override
  State<ModalSheet> createState() => _ModalSheetState();
}

class _ModalSheetState extends State<ModalSheet> {
  @override
  Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          body: GestureDetector(
            onTap: (){
              showMaterialModalBottomSheet(
                enableDrag: true,
                bounce: false,
                expand: false,
                context: context,
                builder: (context) => Commentbx(),
              );
            },
              child:Column(
                children: [
                  SizedBox(height: 250,width: 490,),
                  Card(
                    child: Text('Click me',style: TextStyle(fontSize: 90),),
                  ),
                ],
              )),
        ),
      );
  }
}
