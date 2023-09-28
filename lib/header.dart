import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: size.height / 5,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(45),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: (Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white70,
                          radius: 35,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/logo.jpg'),
                            radius: 30,
                          ),
                        ),
                        SizedBox(width: 5),
                        Column(
                          children: [
                            Text(
                              'AbdAllah Montaser',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.black26,
                              ),
                              child: Text(
                                'Gold Member',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          '200 \$ USA',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ],
                )),
              ),
              SizedBox(
                height: 20,
                width: size.width,
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              child: Card(
                elevation: 3,
                margin: EdgeInsets.symmetric(horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'what dose you belly want to eat ',
                    suffixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.only(left: 30),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
