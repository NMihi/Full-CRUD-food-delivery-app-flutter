import 'package:flutter/material.dart';
import 'package:foodproj/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
int a=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 10.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)),
          Image.asset("images/pizza.jpg",
          width: MediaQuery.of(context).size.width/1.75,
          height: MediaQuery.of(context).size.height/3.95,fit: BoxFit.fill,),
       
       SizedBox(height: 15.0,),

       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column(
          children: [
            Text("Peproni Pizza",
            style:AppWidget.SemiBoldTextFeildStyle(),
            ),
            Text("Pizza",
            style:AppWidget.boldTextFeildStyle(),
            ),
          ],
        ),
        Spacer(),
        GestureDetector(
          onTap: (){
            if(a>1)
            --a;
            setState(() {
              
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius:BorderRadius.circular(8)),
            child: Icon (
              Icons.remove,
              color: Colors.white,
              ),
          ),
        ),
        SizedBox(width: 20.0,),
        Text(a.toString(),style: AppWidget.SemiBoldTextFeildStyle(),),
          SizedBox(width: 20.0,),
        GestureDetector(

          onTap: (){
            ++a;
            setState(() {
              
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8)
            ),
            child:Icon(
              Icons.add,
              color: Colors.white,
              ),
          ),
        )
        
       ],
       ),
       SizedBox(height: 20.0,),
       Text("Pizza is a popular and versatile dish that originated in Italy. It typically consists of a thin, round dough base topped with tomato sauce, cheese (usually mozzarella), and various toppings such as pepperoni, mushrooms, onions, and more. The pizza is then baked in an oven, resulting in a delicious and satisfying combination of crispy crust, melted cheese, and flavorful toppings. Pizza has become a global favorite, with countless variations and styles, ranging from the traditional Neapolitan to New York and Chicago deep-dish styles, reflecting diverse regional preferences worldwide. It is enjoyed as a quick and convenient meal, making it a beloved staple in many cultures.",maxLines: 4,
       style: AppWidget.LightTextFeildStyle(),
       ),
       SizedBox(height: 30.0,),
       Row(children: [
        Text("delivery time",style: AppWidget.LightTextFeildStyle(),),
       SizedBox(width: 25.0,),
       Icon(Icons.alarm,color: Colors.black,),
       SizedBox(width: 5.0,),
       Text("30 min",style: AppWidget.SemiBoldTextFeildStyle(),)
       ],),
       Spacer(),
       Padding(padding: const EdgeInsets.only(bottom: 40.0),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Total Prize", style: AppWidget.SemiBoldTextFeildStyle(),),
          Text("\RS.1200", style: AppWidget.HeadLineTextFeildStyle(),)
        ],),
        Container(
          width: MediaQuery.of(context).size.width/2,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text("Add to cart", style: TextStyle(color: Colors.white, fontSize: 16.0, fontFamily: 'poppins'),),
            SizedBox(width: 30.0,),
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(8)
            ),
            child: Icon(Icons.shopping_cart_outlined, color: Colors.white,),
          )
          ],)
          ),
        
       ],),
       )
        ]
       ),
      ),
    );
  }
}