import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp ({Key? key}) : super (key : key);

  @override
  _SignUpState Create () => _SignUpState();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _SignUpState extends State<SignUp>{
        @override
        Widget build(BuildContext context){
          final deviceHeight =MediaQuery.of(context).size.height;
          final deviceWidth =MediaQuery.of(context).size.width;
          return Scaffold(
            body: SafeArea(
              child: Column(
                children:[
                  Container(
                    height: deviceHeight * 0.20,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
                   
                    child: FittedBox(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/eslogoround.png',
                        ),
                        radius: 120,
                      ),
                    ),
                  ),
                  Container(
                    height: deviceHeight * 0.65,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
                    child: LayoutBuilder(builder: (ctx,constraints){
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold,
                            ),
                            ),
                          SizedBox(
                            height: constraints.maxHeight * 0.01, 
                          ),
                          Text('Please enter your details below to continue'),
                          SizedBox(
                            height: constraints.maxHeight * 0.08, 
                          ),
                          Container(
                            height: constraints.maxHeight * 0.012,
                            decoration: BoxDecoration(
                              color: Color(0xffB4B4B4).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Center(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'youremail@emailhost.com',

                                  ),
                                ),
                              ),
                            ),

                          ),

                          SizedBox(
                            height: constraints.maxHeight * 0.02,
                          ),
                          Container(
                            height: constraints.maxHeight * 0.12,
                            decoration: BoxDecoration(
                              color: Color(0xffB4B4B4).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Center(
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: (){},
                                      icon: Icon(
                                        Icons.visibility,
                                        color: Colors.grey,),
                                    ),
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      );
                    },),
                  ),
                ],
              ),
            ),
          );
        }
}