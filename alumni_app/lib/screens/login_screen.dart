
import 'dart:ui';

import 'package:alumni_app/screens/loading.dart';
import 'package:alumni_app/screens/post_screen.dart';
import 'package:alumni_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:email_validator/email_validator.dart';




class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showPassword=false;
  String? email;
  String? password;
  bool loading =false;
  final _formkey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return


    Scaffold(
      resizeToAvoidBottomInset : false,
      body:

      Padding(
      padding: EdgeInsets.only(left: 6.w, right: 6.w,top:9.h),
      child:
      Form(
        key:_formkey,
        child: Column(
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
      
         SizedBox(height:4.h),
      
      
        TextFormField(
          style: TextStyle(fontFamily: "RobotoMono"),
          autofillHints: [AutofillHints.email],
          validator:

              (val){return  !EmailValidator.validate(val!)?"Invalid email address":null;
           // // print(EmailValidator.validate(val!));
           // //  if (EmailValidator.validate(val!)==false) {
           // //    return "enter valid email address";
           // //  }
           //   if (val!.isEmpty){
           //    return "enter your email address";
           //
           //  }
           //
           // else if (EmailValidator.validate(val)==false) {
           //    return "enter valid email address";
           //  }
           //  else{
           //    return null;
           //  }
          },

          onChanged: (val){setState(() {email=val;});},




        cursorColor:Colors.black,
        decoration: InputDecoration(
        //fillColor:HexColor("#e8f0fe"),filled: true,
        isDense: true,
        enabledBorder:OutlineInputBorder(
        borderSide: new BorderSide(color: Colors.grey),
      
      
        ),
        focusedBorder: OutlineInputBorder(
        borderSide: new BorderSide(color: Colors.grey),),
        labelText: "Email Address",
        labelStyle: TextStyle(color: Colors.grey,fontFamily: "RobotoMono"),
         

      
        ),
        ),
      
        SizedBox(height: 1.h,),
      
      
      
      
        TextFormField(style: TextStyle(fontFamily: "RobotoMono"),
           validator: (val) => val!.length < 8
                                    ? "password is of 8  characters"
                                    : null,
                                //obscureText: obscure,
                                onChanged: (val) {
                                  setState(() {
                                    password = val;
                                  });
                                },
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
          SizedBox(height: 1.3.h,),
          Align(
            alignment: Alignment.centerRight,
            child: Text("Forgot your Password?",style:TextStyle(color:Colors.black,fontSize:10.sp,fontWeight: FontWeight.w800,
                fontFamily: "RobotoMono"
      
            ),),
          ),
          SizedBox(height: 5.h,),
      
          Text("By continuing you agree to Calibiri",style: TextStyle(color: Colors.grey[600],
              fontFamily: "RobotoMono",
              fontWeight: FontWeight.w600
          )
            ,),
          RichText(
              text: TextSpan(
                  text: "Terms of Use",
                  style: TextStyle(fontSize: 9.sp, color: Colors.red[700],fontWeight: FontWeight.w600,
                      fontFamily: "RobotoMono"
                      //fontWeight: FontWeight.bold
                  ),
                  children: [
                    TextSpan(text: "  "),
      
                    TextSpan(text: "and",
                      style: TextStyle(fontSize: 9.sp, color: Colors.grey[600],
                          fontFamily: "RobotoMono",fontWeight: FontWeight.w600
                          //fontWeight: FontWeight.bold
                      ),
      
                    ),
                    TextSpan(text: "  "),
                    TextSpan(
                        text: "Privacy policy",
                        style: TextStyle(
                            color: Colors.red[700],
                            fontFamily: "RobotoMono",
                            //fontWeight: FontWeight.bold,
                            //decoration: TextDecoration.underline,
                            fontSize: 9.sp,fontWeight: FontWeight.w600
                        )
                    ),
                    //TextSpan(text: "  "),
                  ])),
           SizedBox(height: 4.h,),
          SizedBox(width: double.infinity,
      
              child:
      
          ElevatedButton(onPressed: () {

            if(_formkey.currentState!.validate()){
              print("valid form");
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Data')),
              );

              Navigator.push(context, MaterialPageRoute(builder:(context)=>PostScreen()));
            }

          },
              style: ElevatedButton.styleFrom(
                primary: Colors.red[700],
                  padding: EdgeInsets.only(top:2.2.h,bottom: 2.2.h),elevation: 3.0,
      
                shape: new RoundedRectangleBorder(
      
                borderRadius:  BorderRadius.circular(30.0),
              ),),
              child: Text('Login',style: TextStyle(fontSize: 12.sp,
                  fontFamily: "RobotoMono",fontWeight: FontWeight.w800
      
              ),))),
      Expanded(child: Container()),
          Align(
            alignment: Alignment.bottomCenter,
            child:
      
      
      
            Column(
              children: [
                Text("Don't have an account?",style: TextStyle(color:Colors.grey[600],fontSize: 10.sp,
                    fontFamily: "RobotoMono",fontWeight: FontWeight.w600
                ),),
                SizedBox(height: 1.h,),
      
      
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>SignUp()));
      
              },child:
                Text("SIGN UP",style:TextStyle(fontFamily: "RobotoMono",fontSize:10.sp,color: Colors.red[700], decoration: TextDecoration.underline,fontWeight: FontWeight.w800),))
      
      
      
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          )
      
      
      
      
      
        ],
        ),
      ),
      )
    );

  }
}