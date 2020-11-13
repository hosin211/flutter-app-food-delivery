import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/data/meals.dart';

class Meals extends StatefulWidget {
  @override
  _MealsState createState() => _MealsState();
}

class _MealsState extends State<Meals> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  var image = Image.asset('assests/images/lees cover.jpg');
  final meals = [
    lessmeal("tripe deal ", 4.99, "assests/images/triple deal.jpg"),
    lessmeal("Fames club meal", 7.99, "assests/images/club monster.jpg"),
    lessmeal("wrap meal", 6.99, "assests/images/wrap deal.jpg"),
  ];
  Widget build(BuildContext context) {
    return Material(
      child: Hero(
        tag: 'lees',
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              elevation: 5,
              pinned: false,
              snap: false,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assests/images/lees cover.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverPersistentHeader(
              delegate: SliverAppBarDelegate(
                TabBar(
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: "Chicken Meals",
                    ),
                    Tab(text: "Sandwich Meals"),
                    Tab(text: "Fries"),
                  ],
                  controller: controller,
                ),
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                controller: controller,
                children: <Widget>[
                  GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(5),
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        height: 400,
                        width: 150,
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset(
                                'assests/images/club monster.jpg',
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, bottom: 3),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'club monster',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '\$7.99',
                                      style:
                                          TextStyle(color: Color(0xffC48E23)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 40,
                                child: Card(
                                  color: Color(0xffE9EDF2),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(child: Text('Add to Cart')),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 400,
                        width: 150,
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset(
                                'assests/images/wrap deal.jpg',
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, bottom: 3),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Wrap deal',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '\$6.99',
                                      style:
                                          TextStyle(color: Color(0xffC48E23)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 40,
                                child: Card(
                                  color: Color(0xffE9EDF2),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(child: Text('Add to Cart')),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 400,
                        width: 150,
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset(
                                'assests/images/triple deal.jpg',
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, bottom: 3),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Triple deal',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '\$4.99',
                                      style:
                                          TextStyle(color: Color(0xffC48E23)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 40,
                                child: Card(
                                  color: Color(0xffE9EDF2),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(child: Text('Add to Cart')),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(child: Text("Tab two")),
                  Center(child: Text("Tab three")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void scheduleRebuild() => setState(() {});
}

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: Material(child: _tabBar),
    );
  }

  @override
  bool shouldRebuild(SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
