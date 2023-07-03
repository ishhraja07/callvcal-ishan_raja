import 'dart:math';

import 'package:flutter/material.dart';
class RatingView extends StatefulWidget {
  const RatingView({super.key});

  @override
  State<RatingView> createState() => _RatingViewState();
}

class _RatingViewState extends State<RatingView> {
  var _ratingPageController= PageController();
  var _starPostion=200.0;
  var _rating=0;
  var _selectedChipIndex=-1;
  var _isMoreDetailActive=false;
  var _moreDetailFocusNode = FocusNode();
  final growableList = <String>['Driver', 'Quicker Pickup','Pickup Location', 'Dropoff Location', 'Routing'];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Container(
            height: max(300,MediaQuery.of(context).size.height*0.3),
            child: PageView(
              controller: _ratingPageController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildThanksNote(),
                _causeofRating(),

              ],
            ),
          ),
          Positioned(
              bottom:0,
              left:0,
              right:0,
              child: Container(
            color: Colors.blue,
            child: MaterialButton(
              onPressed: (){
                _hideDialog();
              },
              child: Text('Done'),
              textColor: Colors.white,
            ),
          )),
          Positioned(
              right:0,
              child: MaterialButton(
            onPressed: (){
              _hideDialog();
            },
            child: Text('Skip'),

          )),
          AnimatedPositioned(
            top: _starPostion,
            left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) => IconButton(onPressed: (){
              _ratingPageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
              setState(() {
                _starPostion =20.0;
                _rating= index+1;
              });
            }, icon: index<_rating ? Icon(Icons.star, size: 32) : Icon(Icons.star_border,size: 32,),
              color: Colors.blue,
            )
            ),
          ), duration: Duration(
            milliseconds: 300
          )),
          if(_isMoreDetailActive)
            Positioned(
                left : 0,
                right: 0,
                child: MaterialButton(
              onPressed: (){
                setState(() {
                  _isMoreDetailActive=false;
                });
              },
              child: Icon(Icons.arrow_back_ios),
            ))

        ],
      ),
    );
  }
  _buildThanksNote(){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Thanks for riding with Callvcal",
        style: TextStyle(
          fontSize: 24,
          color: Colors.blue,
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.center,
        ),
        Text("We\'d love to get your feedback"),
        Text("How was your ride today?"),
      ],
    );
  }
  _causeofRating(){
    return Stack(
      alignment: Alignment.center,
      children: [
        Visibility(
          visible: !_isMoreDetailActive,
            child: Column(
              mainAxisSize: MainAxisSize.min,
          children: [
            Text("What could be better?"),
            Wrap(
              spacing: 8.0,
              alignment: WrapAlignment.center,
              children: List.generate(5, (index) => InkWell(
                onTap: (){
                  setState(() {
                    _selectedChipIndex=index;
                  });
                },
                child: Chip(
                  backgroundColor: _selectedChipIndex ==index ?Colors.blue: Colors.grey[300],
                  label: Text(growableList[index]),
                ),
              )
              ),
            ),
            SizedBox(height: 16,),
            InkWell(
              onTap: (){
                _moreDetailFocusNode.requestFocus();
                setState(() {
                  _isMoreDetailActive=true;
                });
              },
              child: Text('Want to tell us more?',
              style: TextStyle(decoration: TextDecoration.underline),),
            ),

          ],
        ),
          replacement: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Tell us more'),
              Chip(label: Text(growableList[_selectedChipIndex+1])),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  focusNode: _moreDetailFocusNode,
                  decoration: InputDecoration(
                    hintText: 'Write your review here..',
                    hintStyle: TextStyle(
                      color: Colors.grey[400]
                    ),
                    border: InputBorder.none
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
  _hideDialog(){
    if(Navigator.canPop(context))
      Navigator.pop(context);
  }
}
