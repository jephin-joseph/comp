import 'package:complaint_box/Loadingpage.dart';
import 'package:complaint_box/Somethingwentwrong.dart';
import 'package:complaint_box/authenticate/authenticate.dart';
import 'package:complaint_box/pages/loginpage.dart';
import 'package:complaint_box/pages/selectpage.dart';
import 'package:flutter/material.dart';
class Signinout extends StatelessWidget {
  const Signinout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return StreamBuilder(stream: changesign,builder: (BuildContext context,AsyncSnapshot snapshot){
      if (snapshot.hasError) {
              return Somethingwentwrong();
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Loadingpage();
            } else if (snapshot.hasData) {
              return SelectPage();
            } else {
              return Login();
            }
    });
  }
}