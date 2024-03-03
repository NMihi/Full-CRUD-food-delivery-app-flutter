import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodproj/pages/bottomnav.dart';
import 'package:foodproj/pages/forgotpassword.dart';
import 'package:foodproj/pages/home.dart';
import 'package:foodproj/pages/signup.dart';
import 'package:foodproj/widget/widget_support.dart';

class LogIn extends StatefulWidget{
  const LogIn({super.key});

@override
State<LogIn> createState() => _LogInState();
}
class _LogInState extends State<LogIn>{
   String email="", Password="";

final _formkey=GlobalKey<FormState>();

TextEditingController useremailcontroller = new TextEditingController();
TextEditingController userpasswordcontroller = new TextEditingController();

userLogin() async {
  try {
   UserCredential userCredential = await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email, password: Password,);
//check if not null,log success
if(userCredential.user !=null){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()),
  );
}
  }on FirebaseAuthException catch (e) {
    if(e.code == 'user-not-found'){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "no user found for the email",
          style: TextStyle(fontSize: 18.0,color: Colors.black),
        ),));
    }else if(e.code =='wrong password'){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:Text(
          "Incorrect password",
          style: TextStyle(fontSize: 18.0, color: Colors.black),),
          ));
    }
  }
}
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:
      
      SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2.5,
            decoration: BoxDecoration(gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
              Color.fromRGBO(6, 74, 138, 0.741),
              Color.fromARGB(218, 2, 24, 102)
            ])),
          ),
          Container(
            margin:EdgeInsets.only(top:MediaQuery.of(context).size.height/3) ,
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40))),
            child: Text(""),
          ),
          Container(
            margin: EdgeInsets.only(top: 60.0, left: 20.0, right: 30.0),
            child: Column(children: [
            Center(
                child: Image.asset("images/gofood.png", 
                width: MediaQuery.of(context).size.width/2,
                fit:BoxFit.cover,),),
                SizedBox(height: 50.0,),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.only(left: 20.0,right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/1.5,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                    child: Form(
                      key: _formkey,
                      child: Column(children: [
                        SizedBox(height: 30.0,),
                        Text("Login",
                        style: AppWidget.HeadLineTextFeildStyle(),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                      TextFormField(
                            controller: useremailcontroller,
                            validator: (value){
                              if(value==null || value.isEmpty){
                                return 'Please Enter email';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Email', 
                              hintStyle: AppWidget.SemiBoldTextFeildStyle(), 
                              prefixIcon: Icon(Icons.email_outlined)),
                      ),
                        SizedBox(
                          height: 30.0,
                        ),
                      TextFormField(
                            controller: userpasswordcontroller,
                            validator: (value){
                              if(value==null || value.isEmpty){
                                return 'Please Enter Password';
                              }
                              return null;
                            },
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password', 
                          hintStyle: AppWidget.SemiBoldTextFeildStyle(), 
                          prefixIcon: Icon(Icons.password_outlined)),
                      ),
                      SizedBox(height: 20.0,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPassword()));
                        },
                        child: Container(
                          alignment: Alignment.topRight,
                          child: Text("Forgot Password?",
                          style: AppWidget.SemiBoldTextFeildStyle(),)),
                      ),
                        SizedBox(
                          height: 80.0,
                        ),
                        GestureDetector(
                          onTap: (){
                            if(_formkey.currentState!.validate()){
                              setState(() {
                                email=useremailcontroller.text;
                                Password=userpasswordcontroller.text;
                              });
                            }
                            userLogin();
                          },
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              width: 200,
                              decoration: BoxDecoration(color: Color.fromRGBO(6, 74, 138, 0.893),borderRadius: BorderRadius.circular(20)),
                              child: Center(
                              child: Text("LOGIN",
                              style: TextStyle(
                                color: Colors.white, 
                                fontFamily: 'poppins1', 
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),),),
                            ),
                          ),
                        ),
                         
                      ],
                        
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                  GestureDetector(
                    onTap: (){Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> SignUp()));},
                    child: Text("Don't have an account?sign up", 
                    style: AppWidget.SemiBoldTextFeildStyle(),))
            ],),
          )
        ],),),
      ),
    );

  }

}