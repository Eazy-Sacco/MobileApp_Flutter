
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: size.height * .3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/homebanner.png')
                ),
              ),
            ),

            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 64,
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage('assets/images/profile.png'),
                          ),
                          Column(
                            children:<Widget> [
                              Text('Ben OKELLO MWAKA'),
                              Text('ES-01-1244835')
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          
          ],
        ),
      
    );
  }
}