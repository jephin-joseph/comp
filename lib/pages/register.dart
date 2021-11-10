import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({ Key? key }) : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {

  String _name;
  String _email;
  String _password;
  String _phoneNumber;
  String _DOB;

  final GlobalKey<FormState>_formkey=GlobalKey<FormState>();

  Widget _buildName(){
    return null;
  }

  Widget _buildEmail(){
    return null;
  }

  Widget _buildPassword(){
    return null;
  }

  Widget _buildPhoneNumber(){
    return null;
  }

  Widget _buildDOB(){
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}