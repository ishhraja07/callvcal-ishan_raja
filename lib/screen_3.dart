import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
class Screen_3 extends StatelessWidget {
  const Screen_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            Icon(Icons.arrow_back,color: Colors.white,),
            Text(' Product Name',style: TextStyle(color: Colors.white),),
            SizedBox(width: 70,),
            Icon(Icons.search,size: 35,color: Colors.white,),
            SizedBox(width: 15,),
            Icon(Icons.favorite,size: 32,color: Colors.white,),
            SizedBox(width: 15,),
            Icon(Icons.shopping_cart,size: 32,color: Colors.white,),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Image.asset('lib/images/sort.png'),
                  SizedBox(width: 30,),
                  Text('Sort',style: TextStyle(color: Colors.black,fontSize: 20),),
                  SizedBox(width: 130,),
                  Image.asset('lib/images/filter.png'),
                  SizedBox(width: 20,),
                  Text('Filtter',style: TextStyle(color: Colors.black,fontSize: 20),),
                ],
              ),
            ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height:500,
                      width: 280,
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset('lib/images/man_company.png'),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 148.0),
                                  child: Text('Sponsored',style: TextStyle(color: Colors.grey),),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 80.0),
                                  child: Text('THE MAN COMPANY',style: TextStyle(color: Colors.black),),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 65.0),
                                  child: Text('Combo for Multifaced..',style: TextStyle(color: Colors.black),),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 108.0),
                                  child: SmoothStarRating(starCount: 4,size:28.0,rating: 5,color: Colors.blue,borderColor: Colors.grey,),
                                ),
                              ],
                            ),
                            SizedBox(height: 25,),
                            Padding(
                              padding: const EdgeInsets.only(right: 58.0),
                              child: Row(
                                children: [
                                  Text('40% off',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                                  SizedBox(width: 20,),
                                  Text('1399',style: TextStyle(decoration: TextDecoration.lineThrough ,color: Colors.grey),),
                                  SizedBox(width: 20,),
                                  Text('₹865',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),

                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(right: 68.0),
                              child: Text('Lowest price in the year',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(right: 48.0),
                              child: Text('Free delivery by 25th Jul',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            )
                          ],

                        ),
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Image.asset('lib/images/man_company.png'),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 148.0),
                                child: Text('Sponsored',style: TextStyle(color: Colors.grey),),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 80.0),
                                child: Text('THE MAN COMPANY',style: TextStyle(color: Colors.black),),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 65.0),
                                child: Text('Combo for Multifaced..',style: TextStyle(color: Colors.black),),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 108.0),
                                child: SmoothStarRating(starCount: 4,size:28.0,rating: 5,color: Colors.blue,borderColor: Colors.grey,),
                              ),
                            ],
                          ),
                          SizedBox(height: 25,),
                          Padding(
                            padding: const EdgeInsets.only(right: 58.0),
                            child: Row(
                              children: [
                                Text('40% off',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                                SizedBox(width: 20,),
                                Text('1399',style: TextStyle(decoration: TextDecoration.lineThrough ,color: Colors.grey),),
                                SizedBox(width: 20,),
                                Text('₹865',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),

                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(right: 68.0),
                            child: Text('Lowest price in the year',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(right: 48.0),
                            child: Text('Free delivery by 25th Jul',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          )
                        ],

                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height:500,
                        width: 280,
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset('lib/images/man_company.png'),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 148.0),
                                    child: Text('Sponsored',style: TextStyle(color: Colors.grey),),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 80.0),
                                    child: Text('THE MAN COMPANY',style: TextStyle(color: Colors.black),),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 65.0),
                                    child: Text('Combo for Multifaced..',style: TextStyle(color: Colors.black),),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 108.0),
                                    child: SmoothStarRating(starCount: 4,size:28.0,rating: 5,color: Colors.blue,borderColor: Colors.grey,),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25,),
                              Padding(
                                padding: const EdgeInsets.only(right: 58.0),
                                child: Row(
                                  children: [
                                    Text('40% off',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                                    SizedBox(width: 20,),
                                    Text('1399',style: TextStyle(decoration: TextDecoration.lineThrough ,color: Colors.grey),),
                                    SizedBox(width: 20,),
                                    Text('₹865',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                ),

                              ),
                              SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.only(right: 68.0),
                                child: Text('Lowest price in the year',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.only(right: 48.0),
                                child: Text('Free delivery by 25th Jul',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              )
                            ],

                          ),
                        ),
                      ),
                      Card(
                        child: Column(
                          children: [
                            Image.asset('lib/images/man_company.png'),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 148.0),
                                  child: Text('Sponsored',style: TextStyle(color: Colors.grey),),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 80.0),
                                  child: Text('THE MAN COMPANY',style: TextStyle(color: Colors.black),),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 65.0),
                                  child: Text('Combo for Multifaced..',style: TextStyle(color: Colors.black),),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 108.0),
                                  child: SmoothStarRating(starCount: 4,size:28.0,rating: 5,color: Colors.blue,borderColor: Colors.grey,),
                                ),
                              ],
                            ),
                            SizedBox(height: 25,),
                            Padding(
                              padding: const EdgeInsets.only(right: 58.0),
                              child: Row(
                                children: [
                                  Text('40% off',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                                  SizedBox(width: 20,),
                                  Text('1399',style: TextStyle(decoration: TextDecoration.lineThrough ,color: Colors.grey),),
                                  SizedBox(width: 20,),
                                  Text('₹865',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),

                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(right: 68.0),
                              child: Text('Lowest price in the year',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(right: 48.0),
                              child: Text('Free delivery by 25th Jul',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            )
                          ],

                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
