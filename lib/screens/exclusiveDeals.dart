import 'package:flutter/material.dart';

import 'home.dart';

class ExclusiveDeals extends StatefulWidget {
  const ExclusiveDeals({Key key}) : super(key: key);

  @override
  _ExclusiveDealsState createState() => _ExclusiveDealsState();
}

class _ExclusiveDealsState extends State<ExclusiveDeals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0.0,
        title: Center(child: Text('Exclusive deals', style: TextStyle(color: Color(0xff110802), fontSize: 18),)),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Categories', style: TextStyle(fontSize: 18, color: Color(0xff110802)),),
                  Spacer(),
                  Text('View all', style: TextStyle(fontSize: 15, color: Color(0xff110802)),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  height: 75,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildCategoryItem(),
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 20,
                    ),
                    itemCount: 8,
                  ),
                ),
              ),
              spaceContainer(),
              GridView.builder(
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: 8,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return gridItem();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
