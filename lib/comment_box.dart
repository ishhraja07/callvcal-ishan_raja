import 'dart:io';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';
import 'package:comment_box/comment/comment.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
class Commentbx extends StatefulWidget {
  const Commentbx({super.key});

  get text => null;

  @override
  State<Commentbx> createState() => _CommentbxState();
}

class _CommentbxState extends State<Commentbx> {

  bool _showEmoji=false;
  var count=4;
  TextEditingController _textEditingController= new TextEditingController();
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();

  List filedata = [
    {
      'name': 'Chuks Okwuenu',
      'pic': 'https://picsum.photos/300/30',
      'message': 'I love to code',
      'date': '22h'
    },
    {
      'name': 'Biggi Man',
      'pic': 'https://www.adeleyeayodeji.com/img/IMG_20200522_121756_834_2.jpg',
      'message': 'Very cool',
      'date': '15h'
    },
    {
      'name': 'Tunde Martins',
      'pic': 'assets/img/userpic.jpg',
      'message': 'Very cool',
      'date': '10h'
    },
    {
      'name': 'Biggi Man',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Very cool',
      'date': '3h'
    },
  ];
  @override
  Widget build(BuildContext context) {
    String firstHalf;
    String secondHalf;
    void initState() {
      super.initState();
      if (widget.text.length > 50) {
        firstHalf = widget.text.substring(0, 50);
        secondHalf = widget.text.substring(50, widget.text.length);
      } else {
        firstHalf = widget.text;
        secondHalf = "";
      }
    }

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: GestureDetector(
        onTap: ()=> FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("${filedata.length} comments",style: GoogleFonts.aboreto(),),
            centerTitle: true,
            leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
                child: Icon(Icons.close_rounded)),
          ),
          body: Column(
            children: [
              Expanded(child: commentChild(filedata)),
              Card(
                color: Colors.grey[50],
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _textEditingController,
                        decoration: InputDecoration(
                          hintText: " Add comment..",
                        ),
                        onTap: (){
                          if(_showEmoji)
                            setState(() {
                              _showEmoji=!_showEmoji;
                            });
                        },
                      ),
                    ),
                    IconButton(onPressed: (){
                      setState(() {
                        FocusScope.of(context).unfocus();
                        _showEmoji=!_showEmoji;
                      });
                    }, icon: const Icon(Icons.emoji_emotions,
                        color: Colors.grey, size: 25)),
                   GestureDetector(
                       onTap: (){
                           print(_textEditingController.text);
                           setState(() {
                             var value = {
                               'name': 'New User',
                               'pic':
                               'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
                               'message': _textEditingController.text,
                               'date': '2021-01-01 12:00:00'
                             };
                             filedata.insert(0, value);
                           });
                           _textEditingController.clear();
                           FocusScope.of(context).unfocus();

                       },child: Icon(Icons.send,color: Colors.grey,)),
                  ],
                ),
              ),
              if(_showEmoji)
                SizedBox(
                height: height*0.35,
                child: EmojiPicker(
                  textEditingController: _textEditingController, // pass here the same [TextEditingController] that is connected to your input field, usually a [TextFormField]
                  config: Config(
                    columns: 7,
                    emojiSizeMax: 32 * (Platform.isIOS? 1.30 : 1.0), // Issue: https://github.com/flutter/flutter/issues/28894
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
  Widget commentChild(data) {
    var like=10;
    bool toggle = true;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      color: Colors.blue,
                      borderRadius: new BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: CommentBox.commentImageParser(
                          imageURLorPath: data[i]['pic'])),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold),
                maxLines: 2,
                  overflow: TextOverflow.ellipsis
              ),
              subtitle: Column(
                children: [
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: data[i]['message']+" ",style: TextStyle(color: Colors.black)),
                            TextSpan(text: data[i]['date'],style: TextStyle(color: Colors.grey))
                          ],
                        ),
                        maxLines: 8,
                        overflow: TextOverflow.ellipsis,
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Text('View replies(${count})',style: TextStyle(color: Colors.grey),),
                      Icon(Icons.arrow_drop_down,color: Colors.grey,)
                    ],
                  )
                ],
              ),
              trailing: Column(
                children: [
                  icon()
                ],
              ),
            ),
          )
      ],
    );
  }
  Widget icon(){
    bool toggle=false;
    var like=0;
    return IconButton(onPressed: (){
      setState(() {
        toggle=!toggle!;
        like++;
        print("hello");
      });
    }, icon: toggle!? Column(
      children: [
        Image.asset('lib/images/like.png',height: 12,width: 12,),
        Text('$like')
      ],
    ):Column(
      children: [
        Image.asset('lib/images/like.png',height: 12,width: 12,color: Colors.red,),
        Text('$like')
      ],
    ),
    );
  }
}
