import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List categoriesList=[
    "Popular","Kurti, Saaree & Lehenga", "Women Western", "Men", "Kids", "Home & Kitchen", "Beauty & Health", "Jewelery and accessories", "Bags and Footwear", "Electronics", "Sports and Fitness","Car and Motorbike", "Office supplies", "Food and drinks", "Food and Pet supplies", "Musical Instruments"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[100],
            title: Row(
              children: [
                Text('CATEGORIES',style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(width: 130,),
                Icon(Icons.search,color: Colors.blue,size: 35,),
                SizedBox(width: 6,),
                Icon(Icons.favorite,color: Colors.red,size: 35,),
                SizedBox(width: 6,),
                Icon(Icons.shopping_cart,color: Colors.purple,size: 35,)
              ],
            ),
          ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(12),
            child: GridView.builder(
              shrinkWrap: true,
                itemCount: categoriesList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6,), itemBuilder: (context,index){
              return Container(
                decoration: BoxDecoration(
                  boxShadow: [
                  BoxShadow(
                  blurRadius: 1,
                ),
              ],
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('lib/images/star.png',height: 40,width: 70,),
                    SizedBox(height: 12,),
                    Text("${categoriesList[index]}",textAlign: TextAlign.center,),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
