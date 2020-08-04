import 'package:flutter/material.dart';
import 'package:grocerry_shopping_app/shopping_screens/diary.dart';
import 'package:grocerry_shopping_app/shopping_screens/fruits.dart';
import 'package:grocerry_shopping_app/shopping_screens/nuts.dart';
import 'package:grocerry_shopping_app/shopping_screens/vegetable.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;


  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu
              ),
              Icon(
                Icons.shopping_cart
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),

        Padding(
          padding: const EdgeInsets.only(left : 20.0, right: 20.0),
          child: new Container(
            height: 45,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all( color: Colors.grey, width: 0.5 )
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
//                  TextFormField(
//                    decoration: new InputDecoration(
//                      labelText: "Search here",
//                      labelStyle: TextStyle(
//                          color: Colors.black,
//                          fontFamily: 'OpenSans',
//                          fontSize: 12,
//                      ),
//                      fillColor: Colors.black
//                    ),
//                  )
                Text("Search here",style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'OpenSans',
                  fontSize: 12,
                ),),
                  Icon(
                    Icons.search,
                  )
                ],
              ),
            ),

          ),
        ),
        SizedBox(
          height: 10,
        ),

        TabBar(
          indicatorWeight: 3.0,
            isScrollable: true,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            tabs: <Widget>[
              Tab(
                child: Container(
                  width: 50,
                  child: Text("Fruits",
                  style: TextStyle(
                    fontFamily: 'OpenSans',

                  ),),
                ),
              ),
              Tab(
                child: Container(
                  width: 80,
                  child: Text("Vegetables",
                    style: TextStyle(
                    fontFamily: 'OpenSans',

                  ),),
                ),
              ),
              Tab(
                child: Container(
                  width: 120,
                  child: Text("Nuts and Spices",
                    style: TextStyle(
                    fontFamily: 'OpenSans',

                  ),),
                ),
              ),
              Tab(
                child: Container(
                  width: 60,
                  child: Text("Dairy",
                    style: TextStyle(
                      fontFamily: 'OpenSans',

                    ),),
                ),
              ),
            ],
          controller: _tabController,
        ),
        Expanded(
            child: TabBarView(
              controller: _tabController,
                children: <Widget>[
                  Fruits(),
                  Vegetable(),
                  Nuts(),
                  Diary(),

                ]
            ),
        ),
      ],
    );
  }
}
