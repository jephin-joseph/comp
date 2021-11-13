import 'package:complaint_box/Loadingpage.dart';
import 'package:complaint_box/Somethingwentwrong.dart';
import 'package:complaint_box/authenticate/Signinout.dart';
import 'package:complaint_box/pages/forgotpassword.dart';
import 'package:complaint_box/pages/selectpage.dart';
import 'package:complaint_box/pages/signup.dart';
import 'package:flutter/material.dart';

// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

/// We are using a StatefulWidget such that we only create the [Future] once,
/// no matter how many times our widget rebuild.
/// If we used a [StatelessWidget], in the event where [App] is rebuilt, that
/// would re-initialize FlutterFire and make our application re-enter loading state,
/// which is undesired.
class App extends StatefulWidget {
  // Create the initialization Future outside of `build`:
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/' ,
      
      routes: {
        '/' : (context) => FutureBuilder(
        // Initialize FlutterFire:
        future: _initialization,
        
        builder: (context, snapshot) {
          // Check for errors
          if (snapshot.hasError) {
            return Somethingwentwrong();
          }
    
          // Once complete, show your application
          if (snapshot.connectionState == ConnectionState.done) {
            return Signinout();
          }
    
          // Otherwise, show something whilst waiting for initialization to complete
          return Loadingpage();
        },
      ),                      //login page
        '/selectpage':(context) => const SelectPage(),          //select page   
        '/resetpwd':(context) => const resetpwd(),              //password reset page 
        '/signup':(context)=> const FormScreen()                //signup form page
      },
    
    );
  }
}

