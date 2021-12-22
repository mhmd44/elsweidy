import 'package:flutter/material.dart';

import 'home.dart';

class Favourites extends StatefulWidget {
  const Favourites({Key key}) : super(key: key);

  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Favourites', style: TextStyle(color: Color(0xff110802), fontSize: 18),)),
      ),
      body: GridView.builder(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10),
        itemCount: 6,
        shrinkWrap: true,
       // physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return gridItem();
        },
      ),
    );
  }
}
