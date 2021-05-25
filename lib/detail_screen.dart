import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ikiya/model/furniture_item.dart';
import 'package:ikiya/chart_screen.dart';

var informationTextStyle = TextStyle(fontFamily: 'PTSans');

class DetailScreen extends StatelessWidget {
  final FurnitureItem item;

  DetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(item: item);
        } else {
          return DetailMobilePage(item: item);
        }
      },
    );
  }
}

AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text('IKIYA'),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ChartScreen();
            }));
          },
        ),
      ],
    );
  }

class DetailMobilePage extends StatelessWidget {
  final FurnitureItem item;

  DetailMobilePage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: 
                    Image.asset(
                    item.imageAsset,
                    fit: BoxFit.cover,
                    width: 300,
                  ),
                ),
              ],
            ),
            Card(
              margin: EdgeInsets.all(15),
              color: Colors.grey[200],
              child: Column(
                children: <Widget>[
                  Padding (
                    padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        item.name,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 15.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.straighten),
                            SizedBox(height: 5.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, bottom: 5.0),
                              child: Text(
                                item.size,
                                style: informationTextStyle,
                              )
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.fitness_center),
                            SizedBox(height: 5.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                item.weight,
                                style: informationTextStyle,
                              )
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.attach_money),
                            SizedBox(height: 5.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                item.itemPrice,
                                style: informationTextStyle,
                              )
                            ),
                          ],
                        ),
                      ],
                    )
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      item.description,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'PTSans',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0, left: 15.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            AddToChartButton(),
                            FavoriteButton()
                          ],
                        )
                      ],
                    )
                  )
                ]
              )
            ),
          ],
        ),
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final FurnitureItem item;

  DetailWebPage({required this.item});

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: kIsWeb ? null : AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: Container(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'IKIYA',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Card(
                        color: Colors.grey[200],
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    widget.item.name,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                )
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.calendar_today),
                                      SizedBox(width: 8.0),
                                      Text(
                                        widget.item.size,
                                        style: informationTextStyle,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.access_time),
                                  SizedBox(width: 8.0),
                                  Text(
                                    widget.item.weight,
                                    style: informationTextStyle,
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.monetization_on),
                                  SizedBox(width: 8.0),
                                  Text(
                                    widget.item.itemPrice,
                                    style: informationTextStyle,
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.item.description,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'PTSans',
                                  ),
                                ),
                              ),
                              Container(
                                // margin: EdgeInsets.only(left: 15.0),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        AddToChartButton(),
                                        FavoriteButton()
                                      ],
                                    )
                                  ],
                                )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 32),
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: 
                              Image.asset(
                                widget.item.imageAsset,
                                fit: BoxFit.cover,
                                width: 250,
                              ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

class AddToChartButton extends StatefulWidget {
  @override
  _AddToChartButtonState createState() => _AddToChartButtonState();
}

class _AddToChartButtonState extends State<AddToChartButton> {
  bool isAddedToChart = false;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blueAccent,
      onPressed: () {
        setState(() {
          isAddedToChart = !isAddedToChart;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          isAddedToChart ? "Added to Chart" : "Add to Chart",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),
        ),
      )
    );
  }
}