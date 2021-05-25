import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ikiya/detail_screen.dart';
import 'package:ikiya/category_screen.dart';
import 'package:ikiya/model/furniture_item.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: kIsWeb ? null : AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {  },
            ),
            title: Text('IKIYA'),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.qr_code_scanner,
                  color: Colors.white,
                ),
                onPressed: () {  },
              ),
            ],
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return FurnitureItemGrid(gridCount: 2);
              } else if (constraints.maxWidth <= 1200) {
                return FurnitureItemGrid(gridCount: 4);
              } else {
                return FurnitureItemGrid(gridCount: 6);
              }
            },
          ),
        );
      });
  }
}

class FurnitureItemGrid extends StatelessWidget {
  final int gridCount;

  FurnitureItemGrid({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Browse Categories",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        Scrollbar(
          isAlwaysShown: true,
          child: Container(
            height: 100,
            // padding: const EdgeInsets.only(bottom: 16),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return CategoryScreen();
                    }));
                  },
                  child: 
                    Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: ImageFiltered(
                            imageFilter: ImageFilter.blur(sigmaY:1,sigmaX:1),
                            child: Image.network(
                            'https://images.unsplash.com/photo-1578683010236-d716f9a3f461?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80'
                            )
                          )
                        ),
                        Center(child: 
                          Text(
                            "Bedroom", 
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0
                            )
                          )
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return CategoryScreen();
                    }));
                  },
                  child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(sigmaY:1,sigmaX:1),
                          child: Image.network(
                          'https://images.unsplash.com/photo-1598928506311-c55ded91a20c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80'
                          )
                        )
                      ),
                      Center(child: 
                        Text(
                          "Living Room", 
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0
                          )
                        )
                      ),
                    ],
                  ),
                ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return CategoryScreen();
                    }));
                  },
                  child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(sigmaY:1,sigmaX:1),
                          child: Image.network(
                          'https://images.unsplash.com/photo-1617806118233-18e1de247200?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80'
                          )
                        )
                      ),
                      Center(child: 
                        Text(
                          "Dining Room", 
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0
                          )
                        )
                      ),
                    ],
                  ),
                ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return CategoryScreen();
                    }));
                  },
                  child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(sigmaY:1,sigmaX:1),
                          child: Image.network(
                          'https://images.unsplash.com/photo-1560448075-bb485b067938?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'
                          )
                        )
                      ),
                      Center(child: 
                        Text(
                          "Bathroom", 
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0
                          )
                        )
                      ),
                    ],
                  ),
                ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return CategoryScreen();
                    }));
                  },
                  child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(sigmaY:1,sigmaX:1),
                          child: Image.network(
                          'https://images.unsplash.com/photo-1588854337236-6889d631faa8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'
                          )
                        )
                      ),
                      Center(child: 
                        Text(
                          "Kitchen", 
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0
                          )
                        )
                      ),
                    ],
                  ),
                ),
                ),
              ],
            ),
          )
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Recommended for You",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        Expanded(
          child: Scrollbar(
            isAlwaysShown: true,
            child: GridView.count(
              crossAxisCount: gridCount,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              children:
               furnitureItemList.map((item) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DetailScreen(item: item);
                    }));
                  },
                  child: Card(
                    color: Colors.blueGrey[100],
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            item.imageAsset,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            item.name,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                          child: Text(
                            item.itemPrice,
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          )
        )
      ]
    );
  }
}

class FurnitureItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final FurnitureItem item = furnitureItemList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(item: item);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(item.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            item.name,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(item.color),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: furnitureItemList.length,
      ),
    );
  }
}

