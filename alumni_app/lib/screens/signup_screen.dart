import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'login_screen.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showPassword=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
        body:


        SingleChildScrollView(

          child: 
          IntrinsicHeight(
            child: Padding(
              padding: EdgeInsets.only(left: 6.w, right: 6.w,top:9.h),
            
              child:
              
              
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 65.0,
                      
                      backgroundImage:
                      // NetworkImage("https://www.logolynx.com/topic/ned+university#&gid=1&pid=1"),
                      AssetImage("assets/logo2.jpeg"),
                      //NetworkImage("https://www.google.com/search?q=ned+logo+hd&sxsrf=ALiCzsb8SaBdOByHlTVAu_BUVnacHlfbpg:1652801859809&tbm=isch&source=iu&ictx=1&vet=1&fir=oXcYSigKqT85CM%252Cv3a3zgkLoOmgWM%252C_%253Bysd_rFrvZKSKIM%252CdQpr7yA3DNgzCM%252C_%253BQvMk5fQS2E1LSM%252CdQpr7yA3DNgzCM%252C_%253BcCc8CvHGCPm0EM%252CR4y8JpDO5wKNZM%252C_%253BXNGinNvqtB2QuM%252C97PtMzKy5wLOMM%252C_%253BUwMnBHeuijeInM%252CsSczCo_3atVmDM%252C_%253By3QcixWNZ5mk6M%252CdQpr7yA3DNgzCM%252C_%253BzV6Tfw2WniHMlM%252CxeTF1e8GSG6mWM%252C_%253BZJKgcZAlUNEFFM%252Cg5ROWunwdXxQQM%252C_%253BRs27Iv5eUVZT5M%252CdQpr7yA3DNgzCM%252C_%253Bb8FlK0MYmU7RvM%252CvUe29MdySkKHgM%252C_%253BK_sdVimfnySBFM%252Cmdre02kjLikBAM%252C_%253BTDYyTS2LGppIaM%252CdQpr7yA3DNgzCM%252C_%253BM8jLdtm_FyI3IM%252CnDlFscXK9Jfp1M%252C_%253BkfHe7cnseDH_wM%252CdQpr7yA3DNgzCM%252C_%253BXPJdAO9tmUF23M%252Cw4OVJ3RCYVJCtM%252C_&usg=AI4_-kQCJh8xdm_9xHAmMSt6k1K3HqfErQ&sa=X&ved=2ahUKEwiBr_Pd7ub3AhWLh_0HHd9JADUQ9QF6BAgfEAE#imgrc=XNGinNvqtB2QuM&imgdii=XTVFNkrRPGZvtM"),
                      backgroundColor: Colors.transparent,
                      
                    ),
                      
                    SizedBox(height:3.h),
                      
                      
                      
                    TextField(
                      cursorColor:Colors.black,
                      decoration: InputDecoration(
                        //fillColor:HexColor("#e8f0fe"),filled: true,
                        isDense: true,
                        enabledBorder:OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.grey),
                      
                      
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.grey),),
                        labelText: "Firstname",
                        labelStyle: TextStyle(color: Colors.grey,fontFamily: "RobotoMono"),
                      
                      ),
                    ),
                      
                    SizedBox(height: 1.h,),
                      
                      
                      
                    TextField(
                      cursorColor:Colors.black,
                      decoration: InputDecoration(
                        //fillColor:HexColor("#e8f0fe"),filled: true,
                        isDense: true,
                        enabledBorder:OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.grey),
                      
                      
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.grey),),
                        labelText: "Last name",
                        labelStyle: TextStyle(color: Colors.grey,fontFamily: "RobotoMono"),
                      
                      ),
                    ),
                      
                    SizedBox(height: 1.h,),
                      
                      
                    TextField(
                      cursorColor:Colors.black,
                      decoration: InputDecoration(
                        //fillColor:HexColor("#e8f0fe"),filled: true,
                        isDense: true,
                        enabledBorder:OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.grey),
                      
                      
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.grey),),
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.grey,fontFamily: "RobotoMono"),
                      
                      ),
                    ),
                      
                    SizedBox(height: 1.h,),
                      
                      
                      
                      
                    TextField(
                      cursorColor:Colors.black,
                      decoration: InputDecoration(
                        //fillColor:HexColor("#e8f0fe"),filled: true,
                        isDense: true,
                        enabledBorder:OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.grey),
                      
                      
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.grey),),
                        labelText: "Email address",
                        labelStyle: TextStyle(color: Colors.grey,fontFamily: "RobotoMono"),
                      
                      ),
                    ),
                      
                    SizedBox(height: 1.h,),
                      
                      
                      
                      
                    TextField(
                      obscureText: !showPassword,
                      cursorColor:Colors.black,
                      decoration: InputDecoration(
                        //fillColor:HexColor("#e8f0fe"),filled: true,
                        isDense: true,
                        enabledBorder:OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.grey),
                      
                      
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.grey),),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.grey,fontFamily: "RobotoMono"),
                        suffixIcon: showPassword==true
                            ? IconButton(
                            icon: Icon(Icons.visibility),
                            onPressed: () {
                              setState(() {
                                showPassword = false;
                              });
                      
                            })
                            : IconButton(
                          icon: Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              showPassword = true;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    TextField(
                      obscureText: !showPassword,
                      cursorColor:Colors.black,
                      decoration: InputDecoration(
                        //fillColor:HexColor("#e8f0fe"),filled: true,
                        isDense: true,
                        enabledBorder:OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.grey),
                      
                      
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.grey),),
                        labelText: "Confirm password",
                        labelStyle: TextStyle(color: Colors.grey,fontFamily: "RobotoMono"),
                        suffixIcon: showPassword==true
                            ? IconButton(
                            icon: Icon(Icons.visibility),
                            onPressed: () {
                              setState(() {
                                showPassword = false;
                              });
                      
                            })
                            : IconButton(
                          icon: Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              showPassword = true;
                            });
                          },
                        ),
                      
                      ),
                    ),
                      
                   // SizedBox(height: 1.h,),
                    SizedBox(height: 1.3.h,),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text("Forgot your Password?",style:TextStyle(color:Colors.black,fontSize:10.sp,fontWeight: FontWeight.w800,fontFamily: "RobotoMono"),),
                    ),
                    SizedBox(height: 5.h,),
                      
                    Text("By continuing you agree to Calibiri",style: TextStyle(color: Colors.grey[600],fontFamily: "RobotoMono",fontWeight: FontWeight.w600
                      //fontWeight: FontWeight.bold
                    )
                      ,),
                    RichText(
                        text: TextSpan(
                            text: "Terms of Use",
                            style: TextStyle(fontSize: 9.sp, color: Colors.red[700],fontWeight: FontWeight.w600,fontFamily: "RobotoMono"
                              //fontWeight: FontWeight.bold
                            ),
                            children: [
                              TextSpan(text: "  "),
                      
                              TextSpan(text: "and",
                                style: TextStyle(fontSize: 9.sp, color: Colors.grey[600],fontWeight: FontWeight.w600,fontFamily: "RobotoMono"
                                  //fontWeight: FontWeight.bold
                                ),
                      
                              ),
                              TextSpan(text: "  "),
                              TextSpan(
                                  text: "Privacy policy",
                                  style: TextStyle(
                                      color: Colors.red[700],
                                      //fontWeight: FontWeight.bold,
                                      //decoration: TextDecoration.underline,
                                      fontSize: 9.sp,
                                      fontWeight: FontWeight.w600,fontFamily: "RobotoMono"
                                  )
                              ),
                              //TextSpan(text: "  "),
                            ])),
                    SizedBox(height: 4.h,),
                    SizedBox(width: double.infinity,
                      
                        child:
                      
                        ElevatedButton(onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red[700],
                              padding: EdgeInsets.only(top:2.2.h,bottom: 2.2.h),elevation: 3.0,
                      
                              shape: new RoundedRectangleBorder(
                      
                                borderRadius:  BorderRadius.circular(30.0),
                              ),),
                            child: Text(' Sign up',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w800,fontFamily: "RobotoMono"),))),
                    Expanded(child: Container()),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child:
                      
                      
                      
                      Column(
                        children: [
                           SizedBox(height: 1.h,),
                          Text("Already have an account?",style: TextStyle(color:Colors.grey[600],fontSize: 10.sp,fontWeight: FontWeight.w600,fontFamily: "RobotoMono"),),
                          SizedBox(height: 1.h,),
                      
                      
                          GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder:(context)=>Login()));
                      
                              },child:
                          Text("Login",style:TextStyle(fontSize:10.sp,color: Colors.red[700], decoration: TextDecoration.underline,fontWeight: FontWeight.w800,fontFamily: "RobotoMono"),))
                      
                      
                      
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    )
                      
                      
                      
                      
                      
                  ],
                ),
              ),
          ),
        ),
        







    );
  }
}
