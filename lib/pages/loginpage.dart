import 'package:complaint_box/authenticate/authenticate.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controllermail =TextEditingController();
    TextEditingController controllerpass =TextEditingController();
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.yellow[50],
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Container(
                //login heading
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 0, 0),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                  ),
                ),
                margin: const EdgeInsets.fromLTRB(20, 50, 0, 10),
              ),
              Padding(
                //dot '.'
                padding: const EdgeInsets.only(left: 2, top: 70),
                child: InkWell(
                  child: Text(
                    '.',
                    style: TextStyle(
                        color: Colors.yellow[900],
                        fontSize: 80,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          Container(
            //username field
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: controllermail,
                decoration: InputDecoration(
                  labelText: 'User name',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          ),
          Container(
            //password field
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: controllerpass,
                decoration: (InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
            ),
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          ),
          const SizedBox(
            height: 5,
          ),

          //forgot password
          Container(
            alignment: const Alignment(1, 0),
            padding: const EdgeInsets.only(top: 15, left: 30),
            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/resetpwd');
              },
              child: Text(
                'forgot password',
                style: TextStyle(
                    color: Colors.yellow[900],
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),

          //login button
          // Container(margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          //   height: 45,
          // child: Material(
          //   borderRadius: BorderRadius.circular(20),
          //   shadowColor: Colors.yellow,
          //   color: Colors.yellow,
          //   elevation: 5,
          //   child: GestureDetector(onTap: () {
          //      Navigator.pushNamed(context, '/selectpage');},
          //     child: Center(child: Text('LOGIN',
          //     style: TextStyle(color: Colors.red[900],
          //     fontSize: 16),
          //     ),
          // //     ),
          //   ),
          // ),
          // ),


          InkWell(
            onTap: () {
              signinemail(controllermail.text, controllerpass.text);
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              width: double.infinity,
              height: 45,
              child: Material(
            borderRadius: BorderRadius.circular(20),
            shadowColor: Colors.yellow,
            color: Colors.yellow,
            elevation: 5,
            child: Center(child: Text('LOGIN',
              style: TextStyle(color: Colors.red[900],
              fontSize: 16),
              ),),)
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          //facebook button
          // Container(
          //   height: 45,
          //   margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(20),
          //     border: Border.all(color: Colors.blueAccent),
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: const [
          //       Icon(
          //         Icons.facebook,
          //         size: 30,
          //       ),
          //       Center(
          //         child: Text(
          //           'Login with Facebook',
          //           style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          //         ),
          //       )
          //     ],
          //   ),
          // ),



          //signup button
          Container(
            alignment: const Alignment(0, 0),
            padding: const EdgeInsets.only(top: 30),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: const Text(
                'signup',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

// Center(
//             child: TextButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/selectpage');
//               },
//               child: const Text('signup'),
//             ),
//           ),
