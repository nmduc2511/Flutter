import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nguyenminhducdmoviedb/models/popular.dart';
import 'package:nguyenminhducdmoviedb/screens/main/main.dart';
import 'package:nguyenminhducdmoviedb/screens/detail/detail.dart';

class ListTilePopular extends StatelessWidget {
  final PopularDetail detail;

  const ListTilePopular(this.detail);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 120,
      child: Stack(
        children: <Widget>[
          SizedBox(
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 5, 0, 5),
                    child: Image.network(
                      '${imagePath + detail.posterPath}',
                      width: 80,
                      height: double.maxFinite,
                      filterQuality: FilterQuality.medium,
                      fit: BoxFit.fill,
                    ),
                  ),

                  Expanded(
                    child: Container(
                      width: 250,
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.fromLTRB(0, 10, 20, 0),
                            height: 30,
                            child: Text(
                              '${detail.title}',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                              maxLines: 1,
                              softWrap: false,
                            ),),

                          Expanded(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              width: double.maxFinite,
                              child: Text(
                                '${detail.overview}',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.black),
                                maxLines: 4,
                              ),),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: FlatButton(
              color: Colors.transparent,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailScreen(detail))
                );
              },),
          ),
        ],),
    );
  }

}