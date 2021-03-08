import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  double widthAll = 100;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    widthAll = width;
    String _titleListOffers = "";
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleListOffers),
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.deepOrange,
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share), onPressed: null),
          IconButton(icon: Icon(Icons.favorite_border), onPressed: null)
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  Container(
                    height: height,
                    width: widthAll,
                    child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return Container(
                            height: height / 3.5,
                            child: Card(
                              child: Row(
                                children: [
                                  Container(
                                    height: height / 3.5,
                                    width: widthAll / 3,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/photos/film.jpg"),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            width: (2 * widthAll / 3) - 15,
                                            height: (height / 3.5) / (4),
                                            color: Colors.transparent,
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 80,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        size: 15,
                                                        color: Colors.amber,
                                                      ),
                                                      Text(
                                                        "4.9",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.amber),
                                                      ),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2)),
                                                      Text(
                                                        "(58)",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                    child: Container(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  padding: EdgeInsets.only(
                                                      right: 20),
                                                  child: Icon(
                                                    Icons.favorite_border,
                                                    size: 20,
                                                    color: Colors.blueGrey[700],
                                                  ),
                                                )),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            width: (2 * widthAll / 3) - 15,
                                            height: ((height / 3.5) / (1.5)),
                                            color: Colors.transparent,
                                            child: Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.all(5),
                                                  height: (3 *
                                                          (height / 3.5) /
                                                          (1.5)) /
                                                      4,
                                                  color: Colors.white,
                                                  child: Text(
                                                      "Welcome my name is anjad i study computer scince in zuj univarsity Welcome my name is anjad i study computer scince in zuj univarsity...."),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    height: ((height / 3.5) /
                                                            (1.5)) /
                                                        4,
                                                    color: Colors.white,
                                                    alignment:
                                                        Alignment.topRight,
                                                    padding: EdgeInsets.only(
                                                        right: 50),
                                                    child: Text(
                                                      "From 30",
                                                      style: TextStyle(
                                                          color: Colors
                                                                  .greenAccent[
                                                              700]),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
