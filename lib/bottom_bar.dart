import 'package:bakery_shop/Categories.dart';
import 'package:bakery_shop/HomeScreen.dart';
import 'package:bakery_shop/Orders.dart';
import 'package:bakery_shop/Profile.dart';
import 'package:bakery_shop/const/imageConst.dart';
import 'package:flutter/material.dart';

class bottom_bar extends StatefulWidget {
  const bottom_bar({super.key});

  @override
  State<bottom_bar> createState() => _bottom_barState();
}

class _bottom_barState extends State<bottom_bar> with TickerProviderStateMixin{
  int selectedindex = 0;
  TabController ? tabController;
  onitemtap(
      int index
      ){setState(() {
        selectedindex = index;
              }); }
  @override
  void initState () {selectedindex = 0; tabController = TabController(length: 4, vsync:this); }
@override
void dispose() {
        tabController!.dispose();
  super.dispose();
  }
  getscreen() {
    switch (selectedindex ) {case 0 : return HomeScreen();
      case 1 : return Categories();
      case 2 : return Orders();
      case 3 : return Profile();
      default : return HomeScreen();
    }

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack (
        children: [
          getscreen(),
          Align(alignment: Alignment.bottomCenter,
            
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: Container(
                  decoration : BoxDecoration (color: Color(0xffF9DBE4), borderRadius: BorderRadius.all(Radius.circular(50))),
                  
                  child: TabBar(
                    onTap: (value) {setState(() {
                      selectedindex = value;
                    }); },
                    indicatorColor: Color(0xff894E3F),
                    controller: tabController,
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.black,
                    labelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    tabs: <Widget>[
                      Tab(
                        icon: ImageIcon(AssetImage(bakery)
                        ),
                        text: 'HOME',
                      ),
                      Tab(
                        icon: ImageIcon(AssetImage(categories)
                        ),
                        text: 'CATAGORIES',
                      ),
                      Tab(
                        icon: ImageIcon(AssetImage(orders)
                        ),
                        text: 'ORDERS',
                      ),
                      Tab(
                        icon: ImageIcon(AssetImage(profile)
                        ),
                        text: 'PROFILE',
                      )
                    ],
                  ),
                ),
              ),
            ),)
        ],
      ),
    );
  }
}
