import 'package:flutter/material.dart';
import 'package:yangiproect/models/boshsahifa.dart';

class YangiSahifa extends StatefulWidget {
  int index;
  YangiSahifa(this.index);
  @override
  _YangiSahifaState createState() => _YangiSahifaState();
}

class _YangiSahifaState extends State<YangiSahifa> {
  @override
  Widget build(BuildContext context) {
    final String image = HomePage.hammaMalumotlar[widget.index].rasomlartur.toString();
    final String ism = HomePage.hammaMalumotlar[widget.index].futbolchiismi.toString();
    final String malumotlar = HomePage.hammaMalumotlar[widget.index].malumotlar.toString();
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          SliverAppBar(
            floating: true,
            stretch: true,
            expandedHeight: 300.0,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: [
                StretchMode.zoomBackground,
              ],
              background: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45.0),
                      bottomRight: Radius.circular(45.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage("$image"),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Text(
                        "$ism",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.grey),
                        onPressed: () {},
                        child: Text(
                          "Hamma Rasimlari",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "$malumotlar",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
