import 'package:flutter/material.dart';
class CommentScreen extends StatelessWidget {
  const CommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Expanded(child: ListView.builder(itemBuilder: (context,index){
                return ListTile(
                  
                );
              }))
            ],
          ),
        ),
      ),
    );
  }
}
