import 'package:elsweidy/components/components.dart';
import 'package:elsweidy/components/constants.dart';
import 'package:elsweidy/screens/allCategories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Search extends StatefulWidget {
  const Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // double width= MediaQuery.of(context).size.width;
  // double height= MediaQuery.of(c).size.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Icon(
                  Icons.search,
                  color: primarycolor,
                ),
                flex: 1,
              ),
              Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Hose",
                      ),
                    ),
                  )),
            ],
          ),
          height: 46,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: -5,
                  blurRadius: 5,
                  offset: Offset(0, 0),
                )
              ]),
        ),
        leading: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Icon(Icons.arrow_back_ios)),
        actions: [
          InkWell(
              onTap: () => showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25)),
                  ),
                  builder: (context) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      height: 330,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  'Filter',
                                  style: styleOfNames(),
                                ),
                                Spacer(),
                                Text('Clear',
                                    style: TextStyle(
                                        color: Color(0xffF83D3B),
                                        fontSize: 18)),
                              ],
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  'Category',
                                  style: styleOfNames(),
                                ),
                                Spacer(),
                                Text('Hose',
                                    style: TextStyle(
                                        color: Color(0xffE5660F),
                                        fontSize: 18)),
                                SizedBox(
                                  width: 10,
                                ),
                                smallContainerOfAllCategories(
                                    icona: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: primarycolor,
                                  size: 18,
                                )),
                              ],
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  'price range',
                                  style: styleOfNames(),
                                ),
                                Spacer(),
                                Text('10 sr -700 sr',
                                    style: TextStyle(
                                        color: Color(0xffE5660F),
                                        fontSize: 18)),
                                SizedBox(
                                  width: 10,
                                ),
                                smallContainerOfAllCategories(
                                    icona: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: primarycolor,
                                  size: 18,
                                )),
                              ],
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  'Rate',
                                  style: styleOfNames(),
                                ),
                                Spacer(),
                                largeStars(),
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                    onTap: () => showModalBottomSheet(
                                        isScrollControlled: true,
                                        context: context,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(25),
                                              topLeft: Radius.circular(25)),
                                        ),
                                        builder: (context) {
                                          return Container(
                                            margin: EdgeInsets.all(10),
                                            height: 550,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 10.0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Filter',
                                                        style: styleOfNames(),
                                                      ),
                                                      Spacer(),
                                                      Text('Clear',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xffF83D3B),
                                                              fontSize: 18)),
                                                    ],
                                                  ),
                                                ),
                                                Divider(),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 10.0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Category',
                                                        style: styleOfNames(),
                                                      ),
                                                      Spacer(),
                                                      Text('Hose',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xffE5660F),
                                                              fontSize: 18)),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      smallContainerOfAllCategories(
                                                          icona: Icon(
                                                        Icons
                                                            .keyboard_arrow_down,
                                                        color: primarycolor,
                                                        size: 18,
                                                      )),
                                                    ],
                                                  ),
                                                ),
                                                Divider(),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 10.0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'price range',
                                                        style: styleOfNames(),
                                                      ),
                                                      Spacer(),
                                                      Text('10 sr -700 sr',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xffE5660F),
                                                              fontSize: 18)),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      smallContainerOfAllCategories(
                                                          icona: Icon(
                                                        Icons
                                                            .keyboard_arrow_down,
                                                        color: primarycolor,
                                                        size: 18,
                                                      )),
                                                    ],
                                                  ),
                                                ),
                                                Divider(),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 10.0),
                                                  child: Row(

                                                    crossAxisAlignment: CrossAxisAlignment.start
                                                    ,children: [
                                                      Text(
                                                        'Rate',textAlign: TextAlign.start,
                                                        style: styleOfNames(),
                                                      ),
                                                      Spacer(),
                                                    RadioCollection(),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      InkWell(
                                                          onTap: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child:
                                                              smallContainerOfAllCategories(
                                                                  icona: Icon(
                                                            Icons
                                                                .keyboard_arrow_up,
                                                            color: primarycolor,
                                                            size: 18,
                                                          ))),
                                                    ],
                                                  ),
                                                ),
                                                Divider(),
                                                defaultButton(
                                                    childWidget: Text(
                                                      'Apply Filter',
                                                      style:
                                                          styleOfDefaultButton(),
                                                    ),
                                                    width: 240,
                                                    height: 50)
                                              ],
                                            ),
                                          );
                                        }),
                                    child: smallContainerOfAllCategories(
                                        icona: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: primarycolor,
                                      size: 18,
                                    ))),
                              ],
                            ),
                          ),
                          Divider(),
                          defaultButton(
                              childWidget: Text(
                                'Apply Filter',
                                style: styleOfDefaultButton(),
                              ),
                              width: 240,
                              height: 50)
                        ],
                      ),
                    );
                  }),
              child: Icon(
                Icons.filter,
                color: primarycolor,
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
              height: 30,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => listOfHose(),
                separatorBuilder: (context, index) => SizedBox(),
                itemCount: 2,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: 700,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: 8,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return gridItem();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget listOfHose() => Container(
      color: Color(0xff1A6BB9),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            Text(
              'Recommended',
              style: TextStyle(
                  color: Color(0xffF8A46B),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Best seller',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Price low- high',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );

Widget largeStars() => Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 25,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 25,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 25,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 25,
        ),
        const Icon(
          Icons.star,
          color: Color(0xffF9DDCC),
          size: 25,
        ),
      ],
    );

TextStyle styleOfNames() => TextStyle(color: Color(0xff110802), fontSize: 18);





var _value=1;

class RadioCollection extends StatefulWidget {
  const RadioCollection({Key key}) : super(key: key);

  @override
  _RadioCollectionState createState() => _RadioCollectionState();
}

class _RadioCollectionState extends State<RadioCollection> {

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Radio(value: 1, groupValue: _value, onChanged: (value){
              setState(() {
                _value=value;
              });
            }),
            largeStars(),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Radio(value: 2, groupValue: _value, onChanged: (value){
              setState(() {
                _value=value;
              });
            }),
            largeStars(),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Radio(value: 3, groupValue: _value, onChanged: (value){
              setState(() {
                _value=value;
              });
            }),
            largeStars(),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Radio(value: 4, groupValue: _value, onChanged: (value){
              setState(() {
                _value=value;
              });
            }),
            largeStars(),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Radio(value: 5, groupValue: _value, onChanged: (value){
              setState(() {
                _value=value;
              });
            }),
            largeStars(),

          ],
        ),

      ],
    );
  }
}

