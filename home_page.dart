import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                //   ,child: Column(
                //   children: [SizedBox(height: h*0.16,),
                //     CircleAvatar(radius: 50,backgroundColor:Colors.cyan, backgroundImage: AssetImage("img/profile.png"),)
                //   ],
                // ),
              ),

              SizedBox(height: 70,),
              Container(
                width: w,
                margin: const EdgeInsets.only(left:20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome",style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),
                    Text("omkark@gmail.com",style: TextStyle(
                        fontSize: 22,

                        color: Colors.black
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 100,),
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
                    "Sign Out",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white
                    ),
                  ),
                ),
              ),



            ]
        )
    );
  }
}
