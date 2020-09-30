import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/components/hotel_carousel.dart';
import 'package:travel_app/components/rounded_icons_row.dart';

import 'destination_carousel.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 120),
              child: Text(
                "What would you like to find",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => BuildIcon(
                      index: map.key,
                    ),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 20,
            ),
            DestinationCarousel(),
            SizedBox(
              height: 20,
            ),
            HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_pizza,
              size: 30,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  "https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/117788909_3495542293791465_23209586768535699_o.jpg?_nc_cat=100&_nc_sid=09cbfe&_nc_eui2=AeGRHMjMeiSRK6rXybAbfwtt1xpf6EmjddvXGl_oSaN1260R0CPSjF4L5L2S2IkSw3Uoh_IiuanyX6lta4QFdfsX&_nc_ohc=ZheZ_qOGHtkAX-4EXot&_nc_ht=scontent-hbe1-1.xx&oh=cd8f4db79adbc5fde4bc4613b0ba3ed2&oe=5F9B3FFE"),
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
