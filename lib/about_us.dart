import 'package:flutter/material.dart';
import 'package:user_rating/rating_view.dart';
class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.blueAccent,
        title: Text('User Reviews',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 150,),
              Text('Thank you for riding with us please spare a moment and rate us!',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),textAlign: TextAlign.center,),
              TextButton.icon(onPressed: (){
                openRatingDialog(context);
              },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blue.withOpacity(0.1),
                    ),
                  ),icon: Icon(Icons.star), label: Text('Rate us!', style: Theme.of(context).textTheme.headline6,)
              )
            ],
          ),
        ),
      ),
    );
  }
  openRatingDialog(BuildContext context){
showDialog(context: context, builder: (context){
  return Dialog(
      backgroundColor: Colors.white,
      child: RatingView(),
  );
});
  }
}
