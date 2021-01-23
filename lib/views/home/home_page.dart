import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foody/utils/colors.dart';
import 'package:foody/views/home/products/products_page.dart';
import 'package:foody/widgets/custom_tab_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _screens = [
    ProductsPage(),
    Scaffold(),
    Scaffold(),
  ];

  final List<IconData> _icons = const [
    Icons.home,
    Icons.shopping_cart,
    Icons.person_pin
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
          /* appBar: AppBar(
            backgroundColor: AppColor.primaryWhite.withOpacity(.55),
            elevation: 12,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.settings,color: AppColor.primaryRed, size: 30,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.amp_stories_outlined,color: AppColor.primaryRed, size: 30,),
              ),

            ],
            leading: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                color: Colors.red,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1573083816958-6bec2f4e11a9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8YmVhdXRpZnVsJTIwZ2lybHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60"),
                      ),
                    ),
                  ),
                ),
              ),
              
            ),
          ),
          */
          
          body: IndexedStack(
            index: _selectedIndex,
            children: _screens,
          ),
          bottomNavigationBar: Container(
            padding: const EdgeInsets.only(bottom: 12.0),
            color: Colors.white,
            child: CustomTabBar(
              icons: _icons,
              selectedIndex: _selectedIndex,
              onTap: (index) => setState(() => _selectedIndex = index),
            ),
          )),
    );
  }
}
