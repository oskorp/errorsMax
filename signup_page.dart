import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loginpage/auth_controller.dart';
import 'package:loginpage/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    List images =[
      "g.png","t.png","f.png"
    ];
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
              //   ,child: Column(
              //   children: [SizedBox(height: h*0.16,),
              //     CircleAvatar(radius: 50,backgroundColor:Colors.cyan, backgroundImage: AssetImage("img/profile.png"),)
              //   ],
              // ),
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
                      "Register your account",
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
                        controller: emailController,
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
                        controller: passwordController,
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
              SizedBox(height: 50,),
              GestureDetector(
                onTap: (){
                  String email=emailController.text.trim();
                  String password=passwordController.text.trim();
                  AuthController.instance.register(email, password);
                },
                child: Container(
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
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              RichText(text: TextSpan(
                recognizer:  TapGestureRecognizer()..onTap=()=>Get.to(()=>LoginPage()),
                text: "Already have an account",style: TextStyle(
                  color: Colors.grey[500],fontSize: 15
              ),

              ),),
              // SizedBox(height:w*0.0),
              SizedBox(height: 10),

              RichText(text: TextSpan(
                  text: "Sign up using one of the following method",style: TextStyle(
                  color: Colors.grey[500],fontSize: 15
              ),

              ),),
              Wrap(
                children: List<Widget>.generate(3, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.blueAccent,
                      child: CircleAvatar(
                        radius:20 ,
                        backgroundImage: AssetImage(
                          "img/"+images[index]
                        ),

                      ),
                    ),
                  );
                }))

            ]
        )
    );
  }
}
