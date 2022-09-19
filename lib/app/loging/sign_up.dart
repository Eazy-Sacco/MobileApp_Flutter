import 'package:flutter/material.dart';

class sign_up extends StatefulWidget {
  const sign_up({Key? key}) : super (key : key);

  @override
  _sign_up_State Create () => _sign_up_State();
}

class _sign_up_State extends State<sign_up>{
        @override
        Widget build(BuildContext context){
          final deviceHeight =MediaQuery.of(context).size.height;
          final deviceWidth =MediaQuery.of(context).size.width;
          return Scaffold(
            body: SafeArea(
              child: Column(
                children:[
                  Container(
                    height: deviceHeight * 0.30,
                    color: Colors.cyan,
                  ),
                  Container(
                    height: deviceHeight * 0.30,
                    color: Colors.cyan,
                  ),
                ],
              ),
            ),
          );
        }
}