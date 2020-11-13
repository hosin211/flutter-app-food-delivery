import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/screens/meals%20screen.dart';
import 'package:rating_bar/rating_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final hight = size.height * 0.52;
    return SafeArea(
      child: Scaffold(
        body: AnimateIfVisibleWrapper(
          showItemInterval: Duration(milliseconds: 150),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'What would ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Text(
                            'you like to eat?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                        child: RaisedButton(
                          elevation: 1,
                          padding: EdgeInsets.all(5),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: SvgPicture.asset(
                              "assests/icons/012-motorbike.svg",
                              height: 45,
                              width: 45,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 12, left: 12, top: 8, bottom: 8),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 10,
                                  ),
                                  child: SvgPicture.asset(
                                    'assests/icons/014-sandwich.svg',
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                Text(
                                  'Burger ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 12, left: 12, top: 8, bottom: 8),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 10,
                                  ),
                                  child: SvgPicture.asset(
                                    'assests/icons/022-pizza-slice.svg',
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                Text(
                                  'Pizza  ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 12, left: 12, top: 8, bottom: 8),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 10,
                                  ),
                                  child: SvgPicture.asset(
                                    'assests/icons/032-sandwich-1.svg',
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                Text(
                                  'Sandwich ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 12, left: 12, top: 8, bottom: 8),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 10,
                                  ),
                                  child: SvgPicture.asset(
                                    'assests/icons/013-chicken-bucket.svg',
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                Text(
                                  'Chicken  ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(),
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusColor: Colors.white),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return Meals();
                    }));
                  },
                  child: Hero(
                    tag: "lees",
                    child: Column(
                      children: [
                        Container(
                          height: hight,
                          width: size.width - 10,
                          child: Card(
                            elevation: 2,
                            color: Colors.white,
                            child: Column(
                              children: [
                                InteractiveViewer(
                                  child: Image.asset(
                                    'assests/images/lees cover.jpg',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Image.asset(
                                              'assests/icons/lees icon.jpg',
                                              width: 40,
                                              height: 40,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'lee\'s famous recipe',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 20),
                                                ),
                                                SizedBox(
                                                  height: 6,
                                                ),
                                                Row(
                                                  children: [
                                                    RatingBar.readOnly(
                                                      emptyColor: Colors.red,
                                                      filledColor:
                                                          Color(0xffC48E23),
                                                      size: 18,
                                                      initialRating: 5,
                                                      isHalfAllowed: true,
                                                      halfFilledIcon:
                                                          Icons.star_half,
                                                      filledIcon: Icons.star,
                                                      emptyIcon:
                                                          Icons.star_border,
                                                    ),
                                                    Text(
                                                      '(292 reviews)',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w200),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '\$5.00',
                                            style: TextStyle(
                                                color: Color(0xffC48E23)),
                                          ),
                                          Text(
                                            'Min order',
                                            style: TextStyle(fontSize: 11),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5, right: 10, bottom: 2),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 5, left: 5),
                                        child: Card(
                                          child: Container(
                                            child:
                                                Center(child: Text("Chicken")),
                                            height: 30,
                                            width: 60,
                                          ),
                                          color: Color(0xffE9EDF2),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 5, left: 5),
                                        child: Card(
                                          child: Container(
                                            child: Center(child: Text("Fries")),
                                            height: 30,
                                            width: 60,
                                          ),
                                          color: Color(0xffE9EDF2),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 5, left: 5),
                                        child: Card(
                                          child: Container(
                                            child:
                                                Center(child: Text("Sandwich")),
                                            height: 30,
                                            width: 65,
                                          ),
                                          color: Color(0xffE9EDF2),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: hight,
                        width: size.width - 10,
                        child: Card(
                          elevation: 2,
                          color: Colors.white,
                          child: Column(
                            children: [
                              InteractiveViewer(
                                child: Image.asset(
                                  'assests/images/chile.jpg',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Image.asset(
                                            'assests/icons/chilis icon.jpg',
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Chili house',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 20),
                                              ),
                                              SizedBox(
                                                height: 6,
                                              ),
                                              Row(
                                                children: [
                                                  RatingBar.readOnly(
                                                    emptyColor: Colors.red,
                                                    filledColor:
                                                        Color(0xffCFBCB8),
                                                    size: 18,
                                                    initialRating: 4.5,
                                                    isHalfAllowed: true,
                                                    halfFilledIcon:
                                                        Icons.star_half,
                                                    filledIcon: Icons.star,
                                                    emptyIcon:
                                                        Icons.star_border,
                                                  ),
                                                  Text(
                                                    '(292 reviews)',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w200),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '\$10.00',
                                          style: TextStyle(
                                            color: Color(0xffCFBCB8),
                                          ),
                                        ),
                                        Text(
                                          'Min order',
                                          style: TextStyle(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, right: 10, bottom: 2),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 5, left: 5),
                                      child: Card(
                                        child: Container(
                                          child: Center(child: Text("Chicken")),
                                          height: 30,
                                          width: 60,
                                        ),
                                        color: Color(0xffE9EDF2),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 5, left: 5),
                                      child: Card(
                                        child: Container(
                                          child: Center(child: Text("Fries")),
                                          height: 30,
                                          width: 60,
                                        ),
                                        color: Color(0xffE9EDF2),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 5, left: 5),
                                      child: Card(
                                        child: Container(
                                          child: Center(child: Text("Nuggets")),
                                          height: 30,
                                          width: 60,
                                        ),
                                        color: Color(0xffE9EDF2),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: hight,
                        width: size.width - 10,
                        child: Card(
                          elevation: 2,
                          color: Colors.white,
                          child: Column(
                            children: [
                              InteractiveViewer(
                                child: Image.asset(
                                  'assests/images/pi cover.jpg',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Image.asset(
                                            'assests/icons/pi.jpg',
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Pi pizza',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 20),
                                              ),
                                              SizedBox(
                                                height: 6,
                                              ),
                                              Row(
                                                children: [
                                                  RatingBar.readOnly(
                                                    emptyColor: Colors.red,
                                                    filledColor:
                                                        Color(0xffC48E23),
                                                    size: 18,
                                                    initialRating: 5,
                                                    isHalfAllowed: true,
                                                    halfFilledIcon:
                                                        Icons.star_half,
                                                    filledIcon: Icons.star,
                                                    emptyIcon:
                                                        Icons.star_border,
                                                  ),
                                                  Text(
                                                    '(292 reviews)',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w200),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '\$15.00',
                                          style: TextStyle(
                                              color: Color(0xffC48E23)),
                                        ),
                                        Text(
                                          'Min order',
                                          style: TextStyle(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, right: 10, bottom: 2),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 5, left: 5),
                                      child: Card(
                                        child: Container(
                                          child: Center(child: Text("Pizza")),
                                          height: 30,
                                          width: 60,
                                        ),
                                        color: Color(0xffE9EDF2),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
