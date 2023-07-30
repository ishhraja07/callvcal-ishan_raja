import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Kurti_Saree_Lehenga extends StatefulWidget {
  const Kurti_Saree_Lehenga({super.key});

  @override
  State<Kurti_Saree_Lehenga> createState() => _Kurti_Saree_LehengaState();
}

class _Kurti_Saree_LehengaState extends State<Kurti_Saree_Lehenga> {
  List categoriesList=[
    "All Sarees","Georgette Sarees", "Chiffon Sarees", "Cotton Sarees", "Net Sarees", "Under 299", "Silk Sarees", "New Collection", "Bridal Sarees" ];
  List c_2_list=['All Kurtis','Anarkali Kurtis', 'Rayon Kurtis', 'Cotton Kurtis','Straight Kurtis','Long Kurtis'];
  List c_3_list=['All Kurta Sets','Kurta Palazoo Sets','Kurta Pant Sets','Sharara Sets','Anarkali Kurta Sets','Cotton Kurta Sets'];
  List c_4_list=['All Dupatta Sets','Cotton Sets','Rayon Sets'];
  List c_5_list=['All Dress Materials', 'Pakistani Dress Materials', 'Cotton Dress Materials', 'Patiala Dress Materials', 'Banarasi Dress Materials','Party Wear Dress Materials'];
  List c_6_list=['Lehenga Dupatta','Net Lehengas','Partywear Lehenga'];
  List c_7_list=['Blouses','Skirts & Bottomwear','Dupattas & Jackets','Peticoats','Islamic Fashion','Partywear blouses' ];
    @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          title: Row(
            children: [
              Text('KURTI, SAREE & LEHENGA',style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text('Sarees',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
              Container(
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
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(100),
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
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text('Kurtis',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: c_2_list.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6,), itemBuilder: (context,index){
                  return Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                        ),
                      ],
                      color: Colors.white,
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/images/star.png',height: 40,width: 70,),
                        SizedBox(height: 12,),
                        Text("${c_2_list[index]}",textAlign: TextAlign.center,),
                      ],
                    ),
                  );
                }),
              ),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text('Kurta Sets',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: c_3_list.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6,), itemBuilder: (context,index){
                  return Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                        ),
                      ],
                      color: Colors.white,
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/images/star.png',height: 40,width: 70,),
                        SizedBox(height: 12,),
                        Text("${c_3_list[index]}",textAlign: TextAlign.center,),
                      ],
                    ),
                  );
                }),
              ),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text('Dupatta Sets',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: c_4_list.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6,), itemBuilder: (context,index){
                  return Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                        ),
                      ],
                      color: Colors.white,
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/images/star.png',height: 40,width: 70,),
                        SizedBox(height: 12,),
                        Text("${c_4_list[index]}",textAlign: TextAlign.center,),
                      ],
                    ),
                  );
                }),
              ),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text('Suits & Dress Material',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: c_5_list.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6,), itemBuilder: (context,index){
                  return Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                        ),
                      ],
                      color: Colors.white,
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(100),

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/images/star.png',height: 40,width: 70,),
                        SizedBox(height: 12,),
                        Text("${c_5_list[index]}",textAlign: TextAlign.center,style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  );
                }),
              ),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text('Lehengas',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: c_6_list.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6,), itemBuilder: (context,index){
                  return Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                        ),
                      ],
                      color: Colors.white,
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(100),

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/images/star.png',height: 40,width: 70,),
                        SizedBox(height: 12,),
                        Text("${c_6_list[index]}",textAlign: TextAlign.center,style: TextStyle(fontSize: 14),),
                      ],
                    ),
                  );
                }),
              ),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text('Other Ethinic Wear',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: c_7_list.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6,), itemBuilder: (context,index){
                  return Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                        ),
                      ],
                      color: Colors.white,
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(100),

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/images/star.png',height: 40,width: 70,),
                        SizedBox(height: 12,),
                        Text("${c_7_list[index]}",textAlign: TextAlign.center,style: TextStyle(fontSize: 14),),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
