import 'package:complaint_box/pages/forgotpassword.dart';
import 'package:complaint_box/pages/selectpage.dart';
import 'package:complaint_box/pages/signup.dart';
import 'package:flutter/material.dart';
import 'pages/loginpage.dart';
import 'package:complaint_box/pages/loginpage.dart';

void main() {
  runApp(const StartPage());
}

class StartPage extends StatelessWidget {
  const StartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: '/' ,
      
      routes: {
        '/' : (context) => const Login(),                       //login page
        '/selectpage':(context) => const SelectPage(),          //select page   
        '/resetpwd':(context) => const resetpwd(),              //password reset page 
        '/signup':(context)=> const FormScreen()                //signup form page
      },
      );
  }
}
