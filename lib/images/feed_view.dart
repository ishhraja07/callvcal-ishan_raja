import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    List img=['lib/images/image_1.jpg','lib/images/image_2.jpg','lib/images/image_3.jpg','lib/images/image_4.jpg','lib/images/image_5.jpg','lib/images/image_6.jpg','lib/images/image_7.jpg','lib/images/image_8.jpg','lib/images/image_9.jpg','lib/images/image_10.jpg'];
    return MasonryGridView.builder(
      itemCount: 10,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3) , itemBuilder: (context,index)=>Container(decoration:BoxDecoration(border: Border.all(width: 1,color: Colors.transparent)),child: Image.asset(img[index])),

    );
  }
}
