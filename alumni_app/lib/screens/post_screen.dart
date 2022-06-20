import 'dart:ui';

import 'package:alumni_app/screens/loading.dart';
import 'package:alumni_app/screens/signup_screen.dart';
import 'package:alumni_app/widgets/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:email_validator/email_validator.dart';

class PostScreen extends StatelessWidget {
   PostScreen({Key? key}) : super(key: key);
  List<String> l=["https://www.outboundengine.com/wp-content/uploads/nick-morrison-325805-unsplash.jpg",
    "https://blog.hubspot.com/hubfs/linkedin-times.jpg",
    "https://i.ytimg.com/vi/QHaicm8-9G4/maxresdefault.jpg",
    "https://images.template.net/54382/Real-Estate-Marketing-Linkedin-Post.jpeg",
    "https://blog.hubspot.com/hubfs/linkedin-times.jpg",




  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      appBar: AppBar(
        automaticallyImplyLeading: true,
       // leadingWidth: 10,
        leading:
        Row(
          children: [
            SizedBox(width: 3.w,),
            CircleAvatar(backgroundColor: Colors.orange,child:Text("L",style: TextStyle(color: Colors.white),),),
          ],
        ),
        backgroundColor: Colors.white,
        actions: [

          // TextField(
          //   cursorColor: Colors.black,
          //   decoration: InputDecoration(
          //     fillColor:Colors.blue,
          //     prefixIcon: Icon(Icons.search),
          //     labelText:"Search",
          //
          //   ),
          //
          // ),
          Icon(Icons.message_rounded,color:Colors.black,),
          SizedBox(width: 2.w,)



        ],
        title:
        Container(
          height: 5.h,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(30)
          // ),
          child: TextField(

            cursorColor: Colors.black,

          decoration: InputDecoration(
                  // fillColor:Colors.blue,
            contentPadding: EdgeInsets.only(top: 1.h),
            prefixIcon: Icon(Icons.search,size: 23,),
            enabledBorder:OutlineInputBorder(
              //borderRadius: BorderRadius.circular(40),
              borderSide: new BorderSide(color: Colors.grey),


            ),

            focusedBorder: OutlineInputBorder(
              //borderRadius: BorderRadius.circular(40),
              borderSide: new BorderSide(color: Colors.grey),),
    hintText: 'Search',
    hintStyle: TextStyle(
    color: Colors.black,
    fontSize: 12.sp,
        fontFamily: "RobotoMono",fontWeight: FontWeight.bold,
    //fontStyle: FontStyle.italic,


    ),
    )),
        )),
      body: ListView.builder(
        itemCount: 5,
          itemBuilder: (BuildContext context,int index){
          return
              postWidget(l[index]);




      }


      ),




    );

  }
}
