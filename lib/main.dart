import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFfc7046), Colors.pinkAccent])),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Image.asset(
                    'assets/images/connexion.png',
                    width: 200,
                    height: 100,
                  )
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                          'CONN',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontSize: 36, color: Colors.pink[500], fontWeight: FontWeight.w500
                          )
                      ),

                      Text(
                          'EXION',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontSize: 36, color: Colors.white, fontWeight: FontWeight.w500
                          )
                      ),
                    ],
                  )
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                    'Find and Meet people around\n you to find LOVE',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontSize: 15, color: Colors.white, fontWeight: FontWeight.w300
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    'SIGN IN',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontSize: 24, color: Colors.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(height: 25),

                Container(
                  margin: EdgeInsets.fromLTRB(35, 0, 35, 0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white
                          )
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white
                          )
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(35, 30, 35, 0),
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white
                          )
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white
                          )
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(35, 15, 35, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Checkbox(
                        value: true,
                        checkColor: Colors.white,
                      ),

                      Text(
                        'Remember Password',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 14, color: Colors.white, fontWeight: FontWeight.w600
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  alignment: Alignment.center,
                  width: 300,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset.zero, // changes position of shadow
                      ),
                    ]
                  ),
                  child: GradientText(
                    'GET STARTED',
                    gradient: LinearGradient(
                      colors: [
                        Colors.pink[600],
                        Colors.orangeAccent,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  padding: EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/fb.png',
                        filterQuality: FilterQuality.high,
                        width: 75,
                        height: 75,
                      ),

                      SizedBox(width: 25),
                      Image.asset(
                        'assets/images/twitter.png',
                        filterQuality: FilterQuality.high,
                        width: 75,
                        height: 75,
                      ),
                    ],
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: Colors.white))
                  ),
                  child: Text(
                    'FORGOT PASSWORD?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),

                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Opacity(
                        opacity: 0.3,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                          color: Colors.black,
                        ),
                      ),

                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Opacity(
                              opacity: 0.7,
                              child: Text(
                                'DONT HAVE ACCOUNT?',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 14, color: Colors.yellowAccent, fontWeight: FontWeight.w800, letterSpacing: 1),
                              ),
                            ),


                            Container(
                              padding: EdgeInsets.fromLTRB(2.25, 0, 0, 0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(width: 1, color: Colors.white))
                              ),
                              child: Text(
                                'SIGN UP',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w800),
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      )
    );
  }
}


class GradientText extends StatelessWidget {
  GradientText(
      this.text, {
        @required this.gradient,
      });

  final String text;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: TextStyle(
          // The color must be set to white for this to work
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}


class MinhDuc extends StatefulWidget {
  @override
  _MinhDucState createState() => _MinhDucState();
}

class _MinhDucState extends State<MinhDuc> {
  @override
  Widget build(BuildContext context) {

  }

}
