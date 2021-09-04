import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_delivery_app/widgets/categories_tile.dart';
import 'package:grocery_delivery_app/widgets/explore_button.dart';
import 'package:grocery_delivery_app/widgets/top_product_tile.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedOptionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildButtomNavigationBar(),
    );
  }

  _buildAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.gripLines),
          color: Colors.grey,
          tooltip: 'Menu',
        ),
        actions: _buildActionAppBar());
  }

  List<Widget> _buildActionAppBar() => <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.search),
          color: Colors.grey,
          tooltip: 'Search',
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.shoppingBasket),
          color: Colors.grey,
          tooltip: 'Cart',
        )
      ];

  _buildBody() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Center(
                child: Image.asset('assets/images/banner.png'),
              ),
            ),
            _buildCategories(),
            _buildTopProducts(),
          ],
        ),
      ),
    );
  }

  Widget _buildCategories() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: GoogleFonts.varelaRound(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                  ),
                ),
                ExploreAllButton(
                  title: 'Explore All',
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          _buildCategoryList(),
        ],
      ),
    );
  }

  Widget _buildCategoryList() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CategoriesTile(
          title: 'Bakery',
          color: Color(0xffFCE8A8),
          assetImage: 'assets/images/bread.png',
        ),
        CategoriesTile(
          title: 'Fruits',
          color: Color(0xffFDFECF8),
          assetImage: 'assets/images/apple.png',
        ),
        CategoriesTile(
          title: 'Vegetables',
          color: Color(0xffF2F3C2),
          assetImage: 'assets/images/vegetable.png',
        ),
        CategoriesTile(
          title: 'Drinks',
          color: Color(0xffFFDBC5),
          assetImage: 'assets/images/milk.png',
        ),
      ],
    );
  }

  Widget _buildTopProducts() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Products',
                  style: GoogleFonts.varelaRound(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                  ),
                ),
                ExploreAllButton(
                  title: 'See All',
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          _buildProductList(),
        ],
      ),
    );
  }

  _buildProductList() {
    List topProductList = [
      TopProductTile(
        title: 'Kiwi Fruits',
        assetImage: 'assets/images/kiwi.png',
        color: Color(0xffDFECF8),
        price: '\$2.25',
      ),
      TopProductTile(
        title: 'Watermilon',
        assetImage: 'assets/images/summer.png',
        color: Color(0xffF2F3C2),
        price: '\$1.15',
      ),
      TopProductTile(
        title: 'Strawberry',
        assetImage: 'assets/images/strawberry.png',
        color: Color(0xffFFDBC5),
        price: '\$3.50',
      ),
    ];

    return Container(
      child: Column(
        children: [
          Container(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => topProductList[index],
              separatorBuilder: (context, index) => SizedBox(width: 20.0),
              itemCount: topProductList.length,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildButtomNavigationBar() {
    List<String> bottomNavigationBarOption = [
      'Home',
      'Favorite',
      'Notification',
      'Profile'
    ];

    List<IconData> bottomNavigationBarIcon = [
      Icons.home_outlined,
      Icons.favorite_border,
      Icons.notifications_none,
      Icons.person_outline
    ];

    return Container(
      height: 70,
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Row(
        children: List.generate(bottomNavigationBarOption.length, (index) {
          if (index == selectedOptionIndex) {
            return Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedOptionIndex = index;
                  });
                },
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          bottomNavigationBarIcon[index],
                          color: Colors.green,
                        ),
                        Text(
                          bottomNavigationBarOption[index],
                          style: GoogleFonts.varelaRound(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedOptionIndex = index;
                });
              },
              child: Icon(
                bottomNavigationBarIcon[index],
                color: Colors.white,
              ),
            ),
          );
        }),
      ),
    );
  }
}
