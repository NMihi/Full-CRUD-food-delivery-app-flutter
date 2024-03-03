import 'package:flutter/material.dart';
import 'package:foodproj/pages/details.dart';
import 'package:foodproj/pages/bottomnav.dart';
import 'package:foodproj/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool icecream = false, pizza = false, noodles = false, burger = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top:50.0,left:10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              
              Text(
                "Hello Nirmal," ,
              style:AppWidget.boldTextFeildStyle()
              ),
              Container(
                margin: EdgeInsets.only(right:20.0),
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
                child: const Icon(Icons.shopping_cart_outlined,color: Colors.white,),
              )
              ],
            ),
            SizedBox(height: 30.0,),
            Text(
                "Delicious Food," ,
              style:AppWidget.HeadLineTextFeildStyle()
              ),
              Text(
                "Discover and Get Great Food",
                style: AppWidget.LightTextFeildStyle() ),
              SizedBox(height: 20.0,
              ),
              Container(
                margin: EdgeInsets.only(right:20.0 ),
                child: showItem()),
              SizedBox( height: 30.0,width: 50.0,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Details() ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius:BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            Image.asset("images/pizza.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                            Text("Delicious pizza", style: AppWidget.SemiBoldTextFeildStyle(),),
                            Text("Cheesy Sqeezy", style: AppWidget.LightTextFeildStyle(),),
                            Text("RS.1200", style: AppWidget.SemiBoldTextFeildStyle(),)
                          ],),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0,),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius:BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Image.asset("images/burger.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                          Text("Chiken Burger", style: AppWidget.SemiBoldTextFeildStyle(),),
                          Text("Big Boss Burgy", style: AppWidget.LightTextFeildStyle(),),
                          Text("RS.1500", style: AppWidget.SemiBoldTextFeildStyle(),)
                        ],),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius:BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Image.asset("images/icecream.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                          Text("Ice Cream", style: AppWidget.SemiBoldTextFeildStyle(),),
                          Text("Mouth Watering", style: AppWidget.LightTextFeildStyle(),),
                          Text("RS.500", style: AppWidget.SemiBoldTextFeildStyle(),)
                        ],),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius:BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Image.asset("images/rice&curry.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                          Text("Original Rice", style: AppWidget.SemiBoldTextFeildStyle(),),
                          Text("SriLankan Taste ", style: AppWidget.LightTextFeildStyle(),),
                          Text("RS.800", style: AppWidget.SemiBoldTextFeildStyle(),)
                        ],),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius:BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Image.asset("images/eggrice.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                          Text("Egg Rice", style: AppWidget.SemiBoldTextFeildStyle(),),
                          Text("Bulsai Secrets", style: AppWidget.LightTextFeildStyle(),),
                          Text("RS.900", style: AppWidget.SemiBoldTextFeildStyle(),)
                        ],),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius:BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Image.asset("images/kottu.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                          Text("Spicy Kottu", style: AppWidget.SemiBoldTextFeildStyle(),),
                          Text("Choose as yours", style: AppWidget.LightTextFeildStyle(),),
                          Text("RS.1000", style: AppWidget.SemiBoldTextFeildStyle(),)
                        ],),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius:BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Image.asset("images/lobster.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                          Text("Yummy Lobsts", style: AppWidget.SemiBoldTextFeildStyle(),),
                          Text("Crunchy melts", style: AppWidget.LightTextFeildStyle(),),
                          Text("RS.2500", style: AppWidget.SemiBoldTextFeildStyle(),)
                        ],),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius:BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Image.asset("images/pasta.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                          Text("cheesy Pastas", style: AppWidget.SemiBoldTextFeildStyle(),),
                          Text("For the Italian flav", style: AppWidget.LightTextFeildStyle(),),
                          Text("RS.1000", style: AppWidget.SemiBoldTextFeildStyle(),)
                        ],),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius:BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Image.asset("images/sushi.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                          Text("Sushi & cushi", style: AppWidget.SemiBoldTextFeildStyle(),),
                          Text("For the japaneese taste", style: AppWidget.LightTextFeildStyle(),),
                          Text("RS.2000", style: AppWidget.SemiBoldTextFeildStyle(),)
                        ],),
                      ),
                    ),
                  ),
                ],),
              ),
              SizedBox(
                height: 30.0,width: 50.0,),
              Container(
                margin: EdgeInsets.only(right: 20.0),
                child: Material(
                  elevation: 6.0,
                  borderRadius:BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.all(4),
                    child: Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Image.asset("images/burger.jpg",
                      height: 100,
                       width:100 ,
                       fit: BoxFit.cover,),
                    SizedBox(width: 20.0,),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                         child:Text("YUMMY KING BURGER", style: AppWidget.SemiBoldTextFeildStyle(),)),
                        SizedBox(height: 5.0,),
                    Container(
                        width: MediaQuery.of(context).size.width/2,
                         child:Text("best food for ever", style: AppWidget.LightTextFeildStyle(),)),
                         SizedBox(height: 5.0,),
                    Container(
                        width: MediaQuery.of(context).size.width/2,
                         child:Text("RS.1500", style: AppWidget.SemiBoldTextFeildStyle(),))
                    ],)
                    ],),
                  ),
                ),
              ),
              // SizedBox(height: 10.0),
              // Container(
              //   margin: EdgeInsets.only(right: 20.0),
              //   child: Material(
              //     elevation: 6.0,
              //     borderRadius:BorderRadius.circular(10),
              //     child: Container(
              //       padding: EdgeInsets.all(5),
              //       child: Row(
              //          crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //         Image.asset("images/shrimprice.jpg",
              //         height: 100,
              //          width:100 ,
              //          fit: BoxFit.cover,),
              //       SizedBox(width: 20.0,),
              //       Column(children: [
              //         Container(
              //           width: MediaQuery.of(context).size.width/2,
              //            child:Text("Fresh Sea Food experience", style: AppWidget.SemiBoldTextFeildStyle(),)),
              //           SizedBox(height: 5.0,),
              //       Container(
              //           width: MediaQuery.of(context).size.width/2,
              //            child:Text("Best foods for ever", style: AppWidget.LightTextFeildStyle(),)),
              //            SizedBox(height: 5.0,),
              //       Container(
              //           width: MediaQuery.of(context).size.width/2,
              //            child:Text("RS.1500", style: AppWidget.SemiBoldTextFeildStyle(),))
              //       ],)
              //       ],),
              //     ),
              //   ),
              // )
              
            ],
          ),
        ),
      ),
    );
  }

  Widget  showItem(){
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              GestureDetector(
                onTap: () {
                  icecream=(true);
                  pizza=(false);
                  burger=(false);
                  noodles=(false);
                  setState(() {
                    
                  });
                },

                child: Material(
                  elevation: 5.0,
                  borderRadius:BorderRadius.circular(10),
                child:Container(
                  decoration: BoxDecoration(color: icecream?Color.fromARGB(102, 21, 105, 133):Colors.white,borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  child: Image.asset("images/icecream.png",height: 40,width: 40,fit: BoxFit.cover,color: icecream?Colors.white:Color.fromARGB(102, 21, 105, 133),),
                )
                ),
              ),
              GestureDetector(
                onTap: (){
                  icecream=(false);
                  pizza=(true);
                  burger=(false);
                  noodles=(false);
                  setState(() {
                    
                  });
                },
                child: Material(
                  elevation: 5.0,
                  borderRadius:BorderRadius.circular(10),
                child:Container(
                  decoration: BoxDecoration(color: pizza?Color.fromARGB(102, 21, 105, 133):Colors.white,borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  child: Image.asset("images/pizza.png",height: 40,width: 40,fit: BoxFit.cover,color: pizza?Colors.white:Color.fromARGB(102, 21, 105, 133),),
                )
                ),
              ),
              GestureDetector(
                onTap: (){
                  icecream=(false);
                  pizza=(false);
                  burger=(true);
                  noodles=(false);
                  setState(() {
                    
                  });
                },
                child: Material(
                  elevation: 5.0,
                  borderRadius:BorderRadius.circular(10),
                child:Container(
                  decoration: BoxDecoration(color: burger?Color.fromARGB(102, 21, 105, 133):Colors.white,borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  child: Image.asset("images/burger.png",height: 40,width: 40,fit: BoxFit.cover,color: burger?Colors.white:Color.fromARGB(102, 21, 105, 133),),
                )
                ),
              ),
              GestureDetector(
                onTap: () {
                  icecream=(false);
                  pizza=(false);
                  burger=(false);
                  noodles=(true);
                  setState(() {
                    
                  });
                },

                child: Material(
                  elevation: 5.0,
                  borderRadius:BorderRadius.circular(10),
                child:Container(
                  decoration: BoxDecoration(color: noodles?Color.fromARGB(102, 21, 105, 133):Colors.white,borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  child: Image.asset("images/noodles.png",height: 40,width: 40,fit: BoxFit.cover,color: noodles?Colors.white:Color.fromARGB(102, 21, 105, 133),),
                )
                ),
              ),
            ],
            
            );
  }
}
