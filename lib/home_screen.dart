import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;

    // Style
    var cardTextStyle = TextStyle(
        fontFamily: 'SUNA Arial', 
        fontSize: 12,
        color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/homebanner4.png')),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    margin: EdgeInsets.only(bottom: 40),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Ben OKELLO MWAKA',
                              style: TextStyle(
                                  fontFamily: 'Century Gothic',
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                            Text(
                              'ES-01-1244835',
                              style: TextStyle(
                                  fontFamily: 'SUNA Arial',
                                  color: Colors.white,
                                  fontSize: 11),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                  Expanded(
                    child: GridView.count(
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        primary: false,
                        children: <Widget>[
                          Card(
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            ) ,
                            elevation:4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                    'https://www.svgrepo.com/show/2026/two-persons-talking-about-money.svg', height:80,),
                                Text('Saving Groups', style: cardTextStyle,)
                              ],
                            ),
                          ),

                          //secnd Card
                           Card(
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            ) ,
                            elevation:4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                    'https://www.svgrepo.com/show/21973/money.svg', height:80,),
                                Text('Transactions', style: cardTextStyle,)
                              ],
                            ),
                          ),
                      
                     
                     
                        ],
                        crossAxisCount: 2),
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
