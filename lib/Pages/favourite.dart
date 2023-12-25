import 'package:flutter/material.dart';
import 'package:testapp/Pages/home.dart';
import 'package:testapp/constant.dart';
class Favs extends StatelessWidget {
  const Favs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Home(),
                ));
            },
          ),)
          ,
    );
  }
}