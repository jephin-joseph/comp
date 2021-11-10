import 'package:flutter/material.dart';



class resetpwd extends StatelessWidget {
  const resetpwd({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
       iconTheme: const IconThemeData(
         color: Colors.black),
        title: const Text('Password Reset',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black),),
        backgroundColor: Colors.yellow,
        centerTitle: true,),
        body: Column(
          children: [
            const SizedBox(height: 130,),
            Container(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
            child: const TextField(
              decoration: InputDecoration(
                labelText: 'Mail Id'),
                ),
                ),
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 17),
                  margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.yellow),
                  
                  child: const Center(child: Text('Reset',
                  style: TextStyle(fontSize: 18),),),
                )
                ]),
                backgroundColor: Colors.yellow[50],
    );
  }
}