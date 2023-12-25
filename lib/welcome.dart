import 'package:flutter/material.dart';
import 'package:testapp/Pages/home.dart';
import 'package:testapp/constant.dart';

class WelcomeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(255, 194, 0, 1.0),
                  Color.fromRGBO(255, 61, 61, 0.5),
                ]),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Welocome to X restaurant\nenjoy your meal!",
                    style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: kDarkColor),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 50.0,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),color: kDarkColor),
                  child: TextButton(
                    child: Text("Let's Get Started",style: TextStyle(fontSize: 30,),),
                    onPressed: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context)=>Home())),
                  ),
                ),
                const SizedBox(height: 10.0,),
                Text(">>>",style: TextStyle(fontSize: 20.0),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
