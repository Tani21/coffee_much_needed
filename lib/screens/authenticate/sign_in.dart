import 'package:flutter/material.dart';
import 'package:i_need_coffee/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0,
        title: Text('Sign In to Brew Crew'),
      ),

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: FloatingActionButton.extended(
          onPressed:() async {
            dynamic result = await _auth.signInAnon();
            if(result==null)
            {
              print('error signing in');
            }

            else
            {
              print('signed in');
              print(result);
            }
          },
          label: const Text('Sign in anon'),
        ),
      ),
    );
  }
}