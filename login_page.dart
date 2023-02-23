import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loginpage/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              width: w,
              height:h*0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "img/login_img.png"
                    ),
                    fit: BoxFit.cover
                  )
              )
          ),
          Container(
            margin: const EdgeInsets.only(left:20,right:20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.blueAccent
                  ),
                ),
                Text(
                  "Sign in to your Account",
                  style: TextStyle(
                      color:Colors.grey[500],
                      fontSize: 20
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1,1),
                        color: Colors.grey.withOpacity(0.2)
                      )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText:"Enter Your Email",
                        prefixIcon: Icon(Icons.email, color: Colors.blueAccent,),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color:Colors.white,
                          width: 1.0
                        )
                      ),
                       enabledBorder: OutlineInputBorder(

                           borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color:Colors.white,
                                width: 1.0
                            )
                        ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText:"Enter Your Password",
                        prefixIcon: Icon(Icons.password, color: Colors.blueAccent,),
                        focusedBorder: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color:Colors.white,
                                width: 1.0
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color:Colors.white,
                                width: 1.0
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: Container(),),
                    Text(
                      "Forget your password ?",
                      style: TextStyle(
                          color:Colors.grey[500],
                          fontSize: 20
                      ),
                    ),
                  ],
                )


              ],
            ),
          ),
          SizedBox(height: 70,),
          Container(
              width: w*0.4,
              height:h*0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(
                          "img/2.png"
                      ),
                      fit: BoxFit.cover
                  )
              ),
            child:Center(
              child: Text(
                "Sign In",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  color: Colors.white
                ),
              ),
            ),
          ),
          SizedBox(height:w*0.1),
          RichText(text: TextSpan(text: "Don't have an account ?",style: TextStyle(
            color: Colors.grey[500],fontSize: 20
          ),
          children: [
              TextSpan(text: " Create",style: TextStyle(
                  color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold
              ),
                recognizer:  TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage())
              )
          ]
          ),
          )

        ]
      )
    );
  }
}
