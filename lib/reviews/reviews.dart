import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  bool isMore=false;
  var str1='The vehicle was in a well maintained and much better condition compared to other apps (even though it was a 2015 model of Scorpio), especially the tires (they were quite new and offered a good grip). Pickup and delivery was punctual and that was a major plus point. Overall a great experience and I would revv it up in the future as well as I found the service very user friendly! Just one thing regarding the proximity sensor mounted behind the rear-view mirror on the windscreen. It is extremely loud and distracting. Please give us the option to at least lower it\'s volume of beeping, if not disabling it totally!';
  var str2="I had never tried self drive car rentals before, but my first experience with callvcal was very enjoyable. The app is very user friendly, clear and to the point and they shouldn't make any changes to it. What I like is that Revv keeps things simple, from booking the car of your choice, to delivering it, to picking it up after you complete the ride. The car I booked was clean and in good condition. The delivery executives were friendly and polite. Looking forward to booking my next ride soon!";
  var str3="This was the time I had ever rented a vehicle for a 800km drive, and the experience was amazing. The delivery and pick up timing was up to date and the person who had dropped and picked the vehicle was polite and genuine ,The car was well sanitized too. The was car was old and had dents but it didnt not ruin the trip. Would suggest the Callvcal people to get the new models for the cars for better experience. Overall the service was good and would love to rent a vehicle from Callvcal if ever needed.";
  var str4="This was my first self drive experience and it was flawless. Starting from the booking to the car drop off and the pick up, the experienice was superb with punctual people and great service. What's more the car was almost new so driving was a total pleasure. Just a suggestion, sunshades in the car would have been a bonus :)";
  var str5="The car was very well maintained, good pickup, good average, powerful brakes. Also the car was clean and sanitised. Best thing the executive delivers and self picks up the car and does all the checklist, otherwise a lot of time goes into that and is very boring irritating work. Overall a very good experience.";
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(color: Colors.black,),
          centerTitle: true,
          title: Text('Reviews',style: TextStyle(color: Colors.blueAccent, fontFamily: GoogleFonts.lato().fontFamily),),
        ),body: Container(
        padding: EdgeInsets.only(top: 2.0,bottom: 2.0,left: 16.0,right: 0.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 16),
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(image:
                    DecorationImage(image: AssetImage("assets/images/profile.png")
                    ),
                      borderRadius: BorderRadius.circular(44),
                    ),
      ),
                    Expanded(
                      child: Text(
                        "Google User",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold
                      )
                        ,),
                    ),
                    IconButton(onPressed:(){}, icon: Icon(Icons.more_vert)
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    SmoothStarRating(starCount: 5,size:28.0,rating: 3.5,color: Colors.blue,borderColor: Colors.blue,),
                    Text("21 November 2018",
                      style: TextStyle(fontSize: 18),)
                  ],
                ),
                SizedBox(height: 8.0,),
                GestureDetector(
                  onTap: ()=>setState(() {
                    isMore=!isMore;
                  }),
                    child: isMore ? Text(str1,
                      style: TextStyle(fontSize: 18,fontFamily: GoogleFonts.abel().fontFamily,fontWeight: FontWeight.bold,color: Colors.grey),
                    ): Text(str1,maxLines:3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 18,fontFamily: GoogleFonts.abel().fontFamily,fontWeight: FontWeight.bold,color: Colors.grey),
                    )
                ),
                SizedBox(height: 10,),
                //str2
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(image:
                      DecorationImage(image: AssetImage("assets/images/profile.png")
                      ),
                        borderRadius: BorderRadius.circular(44),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Google user",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold
                      )
                        ,),
                    ),
                    IconButton(onPressed:(){}, icon: Icon(Icons.more_vert)
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    SmoothStarRating(starCount: 5,size:28.0,rating: 5,color: Colors.blue,borderColor: Colors.blue,),
                    Text("06 Jun 2023",
                      style: TextStyle(fontSize: 18),)
                  ],
                ),
                SizedBox(height: 8.0,),
                GestureDetector(
                    onTap: ()=>setState(() {
                      isMore=!isMore;
                    }),
                    child: isMore ? Text(str2,
                      style: TextStyle(fontSize: 18,fontFamily: GoogleFonts.abel().fontFamily,fontWeight: FontWeight.bold,color: Colors.grey),
                    ): Text(str2,maxLines:3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 18,fontFamily: GoogleFonts.abel().fontFamily,fontWeight: FontWeight.bold,color: Colors.grey),
                    ),
                ),
                SizedBox(height: 10,),
                //str3
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(image:
                      DecorationImage(image: AssetImage("assets/images/profile.png")
                      ),
                        borderRadius: BorderRadius.circular(44),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Sailpik De",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold
                      )
                        ,),
                    ),
                    IconButton(onPressed:(){}, icon: Icon(Icons.more_vert)
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    SmoothStarRating(starCount: 5,size:28.0,rating: 4,color: Colors.blue,borderColor: Colors.blue,),
                    Text("29 Jun 2023",
                      style: TextStyle(fontSize: 18),)
                  ],
                ),
                SizedBox(height: 8.0,),
                GestureDetector(
                  onTap: ()=>setState(() {
                    isMore=!isMore;
                  }),
                  child: isMore ? Text(str3,
                    style: TextStyle(fontSize: 18,fontFamily: GoogleFonts.abel().fontFamily,fontWeight: FontWeight.bold,color: Colors.grey),
                  ): Text(str3,maxLines:3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18,fontFamily: GoogleFonts.abel().fontFamily,fontWeight: FontWeight.bold,color: Colors.grey),
                  ),
                ),
                SizedBox(height: 10,),
                //str4
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(image:
                      DecorationImage(image: AssetImage("assets/images/profile.png")
                      ),
                        borderRadius: BorderRadius.circular(44),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Priya Kesarwani",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold
                      )
                        ,),
                    ),
                    IconButton(onPressed:(){}, icon: Icon(Icons.more_vert)
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    SmoothStarRating(starCount: 5,size:28.0,rating: 4,color: Colors.blue,borderColor: Colors.blue,),
                    Text("8 July 2020",
                      style: TextStyle(fontSize: 18),)
                  ],
                ),
                SizedBox(height: 8.0,),
                GestureDetector(
                  onTap: ()=>setState(() {
                    isMore=!isMore;
                  }),
                  child: isMore ? Text(str4,
                    style: TextStyle(fontSize: 18,fontFamily: GoogleFonts.abel().fontFamily,fontWeight: FontWeight.bold,color: Colors.grey),
                  ): Text(str4,maxLines:3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18,fontFamily: GoogleFonts.abel().fontFamily,fontWeight: FontWeight.bold,color: Colors.grey),
                  ),
                ),
                SizedBox(height: 10,),
                //str5
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(image:
                      DecorationImage(image: AssetImage("assets/images/profile.png")
                      ),
                        borderRadius: BorderRadius.circular(44),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Parag Gosh",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold
                      )
                        ,),
                    ),
                    IconButton(onPressed:(){}, icon: Icon(Icons.more_vert)
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    SmoothStarRating(starCount: 5,size:28.0,rating: 4,color: Colors.blue,borderColor: Colors.blue,),
                    Text("13 October 2021",
                      style: TextStyle(fontSize: 18),)
                  ],
                ),
                SizedBox(height: 8.0,),
                GestureDetector(
                  onTap: ()=>setState(() {
                    isMore=!isMore;
                  }),
                  child: isMore ? Text(str5,
                    style: TextStyle(fontSize: 18,fontFamily: GoogleFonts.abel().fontFamily,fontWeight: FontWeight.bold,color: Colors.grey),
                  ): Text(str5,maxLines:3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18,fontFamily: GoogleFonts.abel().fontFamily,fontWeight: FontWeight.bold,color: Colors.grey),
                  ),
                ),

              ],
            ),
          ),
        )
      ),
    );
  }
}
