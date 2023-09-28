import 'package:flutter/material.dart';

class HambergerList extends StatefulWidget {
  @override
  State<HambergerList> createState() => _HambergerListState();
}

class _HambergerListState extends State<HambergerList> {
  @override
  Widget build(BuildContext context) {
    Widget baconImage = Container(
      height: 85,
      child: Image.asset('images/bacon_burger.jpg'),
    );
    Widget chickenImage = Container(
      height: 85,
      child: Image.asset('images/chicken_burger.jpg'),
    );

    int items = 10;
    return SliverToBoxAdapter(
      child: Container(
        height: 200,
        width: 200,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items,
            itemBuilder: (context, index) {
              bool reverse = index.isEven;
              return Stack(children: [
                Container(
                  height: 200,
                  width: 200,
                  margin:
                      EdgeInsets.only(left: 20, right: index == items ? 20 : 0),
                  child: GestureDetector(
                    onTap: () {
                      //To Do Navigator
                    },
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              'Burger',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  '15\$ USA',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      elevation: 3,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(45),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: reverse ? 55 : 55,
                  child: GestureDetector(
                    onTap: () {
                      //to do navigator
                    },
                    child: reverse ? chickenImage : baconImage,
                  ),
                ),
              ]);
            }),
      ),
    );
  }
}
