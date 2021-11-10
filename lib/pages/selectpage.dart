import 'package:flutter/material.dart';


class SelectPage extends StatelessWidget {
  const SelectPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text('Complaint Box'),
            backgroundColor: Colors.amber,
          ),
          body: 
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [


              
              GestureDetector(          //road
                onTap: (){
                 
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text('Road'),),
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(15),
                      ),
                  ),
              ),




              GestureDetector(               //drainage
                onTap: () {
                
              },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child:  const Align(alignment: Alignment.center,
                  child: Text('Drainage'),),
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(15.0),
                   ),
                  ),
              ),




              GestureDetector(            // electricity
                onTap: () {            
                
              },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child:  const Align(alignment: Alignment.center,
                  child: Text('Electricity'),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.yellowAccent,
                  ),
                  ),
              ),




              GestureDetector(           //drinking water
                onTap: (){
                
              },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child:  const Align(alignment: Alignment.center,
                  child: Text('Drinking water'),),
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(15)),
                  ),
              ),
            ],),
    );
  }
}