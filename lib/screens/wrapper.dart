import 'package:flutter/material.dart';
import 'package:i_need_coffee/screens/authenticate/authenticate.dart';
import 'package:i_need_coffee/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Authenticate();
  }
}