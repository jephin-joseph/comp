import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({ Key? key }) : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {

  late String _name;
  late String _email;
  late String _password;
  late String _phoneNumber;
  late String _DOB;

  final GlobalKey<FormState>_formkey=GlobalKey<FormState>();



//name
  Widget _buildName(){
    return TextFormField(
      maxLength: 20,
      decoration: InputDecoration(labelText: 'Name'),
      keyboardType: TextInputType.name,
        validator: (value){
          if(value!.isEmpty){
            return 'name is required';
          }
          if(RegExp(r'[0-9]')
          .hasMatch(value)){
            return 'no numbers allowed';
          }
        },
        onSaved: (value){
          _name=value!;
        },
        );
  }


  //email

  Widget _buildEmail(){
    return TextFormField(
      maxLength: 30,
      decoration: InputDecoration(labelText: 'Email'),
        validator: (value){
          if(value!.isEmpty){
            return 'Email is required';
          }
          if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(value)){
            return 'please enter a valid email address';
          }
          return null;
        },
        onSaved: (value){
          _email=value!;
        },
        );
  }



  //password

  Widget _buildPassword(){
    return TextFormField(
      maxLength: 20,
      decoration: InputDecoration(labelText: 'Password'),
      keyboardType: TextInputType.visiblePassword,
        validator: (value){
          if(value!.isEmpty){
            return 'Password is required';
          }
          if(value.length<8){
            return 'password must be greater than 8 characters long';
          }
        },
        onSaved: (value){
          _password=value!;
        },
        );
  }


  //phone number

  Widget _buildPhoneNumber(){
    return TextFormField(
      maxLength: 10,
      decoration: InputDecoration(labelText: 'Phone number'),
      keyboardType: TextInputType.phone,
        validator: (value){
          if(value!.isEmpty){
            return 'Phone number is required';
          }
        },
        onSaved: (value){
          _phoneNumber=value!;
        },
        );
  }




//dob
  Widget _buildDOB(){
    //DateTime selectedDate = DateTime.now();

    return TextFormField(

      decoration: InputDecoration(labelText: 'Date of birth'),
        validator: (value){
          if(value!.isEmpty){
            return 'Date of birth is required';
          }
        },
        onSaved: (value){
          _DOB=value!;
        },
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('data'),),
      body: Container(
        margin: EdgeInsets.all(24),
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildName(),
        _buildEmail(),
        _buildPassword(),
        _buildPhoneNumber(),
        _buildDOB(),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: (){
            if (!_formkey.currentState!.validate()){
              return ;
            }
            _formkey.currentState!.save();
            print(_name) ;
            print(_email) ;
            print(_password) ;
            print(_phoneNumber);
            print(_DOB);
          }, 
        child: Text(
          'submit', 
          style: TextStyle(
            color: Colors.brown,
            fontSize: 16),
            ),
            )
      ],
      ),
      ),
      ),
    );
  }
}