import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:nguyenminhducdmoviedb/models/popular.dart';
import 'package:nguyenminhducdmoviedb/screens/views/cells/popular_cell.dart';

final imagePath = 'https://image.tmdb.org/t/p/w500';

Future<PopularResult> fetchPopular() async {
  Map<String, String> mainheader = {
    "content-type": "application/json;charset=utf-8",
    "cache-control": "public, max-age=21600"
  };

  final response =
  await http.get(
      'https://api.themoviedb.org/3/movie/popular?api_key=d61431a2fb64b6e56c6f086952e63ab6&language=en-US&page=1',
      headers: mainheader
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return PopularResult.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}



void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      title: 'Home',
      home: ListScreen(),
    );
  }

}

class ListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListScreenState();
  }

}

class ListScreenState extends State<ListScreen> {
  Future<PopularResult> list;

  @override
  void initState() {
    super.initState();
    list = fetchPopular();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Popular', style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w700),),
        backgroundColor: CupertinoColors.white,
      ),
      body: Center(
          child: FutureBuilder<PopularResult>(
            future: list,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var _itemsCount = snapshot.data.populars.length;
                var _populars = snapshot.data.populars;

                return ListView.builder(
                  itemCount: _itemsCount,
                  itemBuilder: (context, index) {
                    final detail = _populars[index];
                    return ListTilePopular(detail);
                  },
                );
              } else {
                debugPrint('error snapshoot');
              }

              return CircularProgressIndicator();
            },
          ),
      ),
    );
  }

}