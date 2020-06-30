import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nguyenminhducdmoviedb/models/popular.dart';
import 'package:nguyenminhducdmoviedb/screens/main/main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


class DetailScreen extends StatelessWidget {
  final PopularDetail detail;

  DetailScreen(this.detail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text('Movie detail', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),),
          backgroundColor: CupertinoColors.white,
        ),
        body: Container(
          child: ListView.separated(
              separatorBuilder: (context, builder) {
                return Divider(
                  color: Colors.black54,
                );
              },
              itemCount: 4,
              itemBuilder: (context, index) {
                if (index == 0) {
                  // header
                  return Container(
                    height: 240,
                    child: Stack(
                      children: <Widget>[
                        // backdrop image
                        Stack(
                          children: <Widget>[
                            // backdrop image
                            Image.network(
                              '${imagePath + detail.backdropPath}',
                              height: double.maxFinite,
                              width: double.maxFinite,
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fitHeight,
                            ),

                            // title contain
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  height: 90,
                                  child: Stack(
                                    children: <Widget>[
                                      // canvas widget
                                      Container(
                                        width: double.maxFinite,
                                        height: double.maxFinite,
                                        color: Colors.transparent,
                                        child: CustomPaint(
                                          painter: CustomTriangle(),
                                        ),
                                      ),

                                      // percent widget
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          height: 70 / 2,
                                          child: Row(
                                            children: <Widget>[
                                              // title widget
                                              Expanded(
                                                  flex: 4,
                                                  child: Container(
                                                    color: Colors.transparent,
                                                    alignment: Alignment.centerLeft,
                                                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                                    child: Text(
                                                        '${detail.title}',
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Colors.black),
                                                      softWrap: true,
                                                      maxLines: 1,
                                                    ),
                                                  )
                                              ),

                                              // vote average widget
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  height: double.maxFinite,
                                                  width: double.maxFinite,
                                                  child: new CircularPercentIndicator(
                                                    radius: 30.0,
                                                    lineWidth: 4.0,
                                                    percent: detail.voteAverage / 10,
                                                    center: new Text("${detail.voteAverage}", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),),
                                                    progressColor: Colors.black87,
                                                    backgroundColor: Colors.grey,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                )
                            ),
                          ],
                        ),

                        // poster widget
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Material(
                              elevation: 10,
                              child: Image.network(
                                '${imagePath + detail.posterPath}',
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.medium,
                                width: 100,
                                height: 150,
                              ),
                            ),
                          )
                        )
                      ],
                    ),);
                } else if (index == 1) {
                  // review && trailer
                  return Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                            flex: 20,
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/images/reviews.png',
                                      height: 28,
                                      width: 28,
                                    ),
                                    SizedBox(height: 2),
                                    Text('Reviews', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
                                  ],
                                ),
                                SizedBox(
                                  width: double.maxFinite,
                                  height: double.maxFinite,
                                  child: FlatButton(
                                    onPressed: () { },
                                  ),
                                )
                              ],
                            )
                        ),
                        VerticalDivider(
                          color: Colors.grey,
                          width: 10,
                          indent: 1,
                          endIndent: 1,
                        ),
                        Expanded(
                          flex: 20,
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/play.png',
                                    height: 28,
                                    width: 28,
                                  ),
                                  SizedBox(height: 2),
                                  Text('Trailers', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
                                ],
                              ),
                              SizedBox(
                                width: double.maxFinite,
                                height: double.maxFinite,
                                child: FlatButton(
                                  onPressed: () { },
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                } else if (index == 2) {
                  // genre && release
                  return SizedBox(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 20,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                    'Genre',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: Colors.black)
                                ),
                                SizedBox(height: 5),
                                Text(
                                    'Drama',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black87)
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 20,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                    'Release',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: Colors.black)
                                ),
                                SizedBox(height: 5),
                                Text(
                                    '${detail.releaseDate}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black87)
                                )
                              ],
                            ),
                          )
                        ],
                      )
                  );
                } else {
                  // overview
                  return Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Text(
                      '${detail.overview}',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[800]),
                    ),
                  );
                }
              }
          ),
        )
    );
  }

}

class CustomTriangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.lineTo(size.width, size.height * 0.55);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}