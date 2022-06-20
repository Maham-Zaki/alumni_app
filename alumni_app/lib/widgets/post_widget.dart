import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


Widget postWidget(String img){

  return 
    Card(
    child:
    Padding(
      padding:  EdgeInsets.only(left: 2.w,right: 2.w,top: 1.h,bottom: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Lorem ipsum",style:TextStyle(fontFamily:"RobotoMono",fontWeight:FontWeight.bold)),
          Text("Lorem ipsum dolor sit amet",style:TextStyle(fontFamily:"RobotoMono",fontWeight:FontWeight.bold,color:Colors.grey)),
          SizedBox(height: 2.h,),
          SizedBox(
            child: Text(

                "Lorem ipsum dolor sit ame. Ut enim ad minim veniam, quis nostrud exerex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat ",
             // overflow: TextOverflow.fade,
              //softWrap: true,
              //maxLines: 1,
style: TextStyle(fontFamily: "RobotoMono",fontWeight: FontWeight.bold,fontSize: 9.sp),

            ),
          )
,
          // Row(
          //   children: [
          //
          //   ],
          // ),

          // Flexible(child: Text("Lorem ipsum dolor sit amet,
          //     consectetur adipiscing elit, sed do eiusmod "
          //     "tempor incididunt ut labore et dolore magna aliqua."
          //     " Ut enim ad minim veniam, quis nostrud exercitation"
          //     " ullamco laboris nisi ut aliquip ex ea commodo consequat."
          //     " Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat ")),
          SizedBox(height: 1.5.h,),
          Container(
            child: Image.network(img),
            //   child:Image.network(
            //       "https://media-exp1.licdn.com/dms/image/C4D12AQEXUQo2od63sA/article-cover_image-shrink_600_2000/0/1579136876834?e=1657756800&v=beta&t=q49wAku-fnTnMaU9GbRlGdatp10IdS8DaBxT86STWEk")
          ),











         SizedBox(height: 1.5.h,),
          Divider(),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     IconButton(onPressed:(){}, icon:Icon(Icons.thumb_up_sharp,size: 20,)),
          //     IconButton(onPressed:(){}, icon:Icon(Icons.comment_outlined,size: 20,)),
          //     IconButton(onPressed:(){}, icon:Icon(Icons.send,size: 20,)),
          //
          //
          //   ],
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Text("like",style:TextStyle(fontFamily:"RobotoMono"),),
          //     Text("comment",style:TextStyle(fontFamily:"RobotoMono"),),
          //     Text("share",style:TextStyle(fontFamily:"RobotoMono"),),
          //
          //   ],
          // ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisSize: MainAxisSize.min ,
                //m//ainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed:(){}, icon:Icon(Icons.thumb_up_sharp,size: 20,)),
                  Text("like",style:TextStyle(fontFamily:"RobotoMono"),),
                ],
              ),


              Column(
                children: [
                  IconButton(onPressed:(){}, icon:Icon(Icons.comment_outlined,size: 20,)),
                  Text("comment",style:TextStyle(fontFamily:"RobotoMono"),),
                ],
              ),



              Column(
                children: [
                  IconButton(onPressed:(){}, icon:Icon(Icons.send,size: 20,)),
                  Text("share",style:TextStyle(fontFamily:"RobotoMono"),),
                ],
              ),








              //IconButton(onPressed:(){}, icon:Icon(Icons.thumb_up_sharp))
            ],
          ),
          // SizedBox(height: 1.h,),
          // Container(
          //   child: Image.network("https://www.outboundengine.com/wp-content/uploads/nick-morrison-325805-unsplash.jpg"),
          // //   child:Image.network(
          // //       "https://media-exp1.licdn.com/dms/image/C4D12AQEXUQo2od63sA/article-cover_image-shrink_600_2000/0/1579136876834?e=1657756800&v=beta&t=q49wAku-fnTnMaU9GbRlGdatp10IdS8DaBxT86STWEk")
          //  )

        ],
      ),
    ),

  );
}