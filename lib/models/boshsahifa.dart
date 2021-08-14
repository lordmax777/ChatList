/*import 'package:flutter/cupertino.dart';
/*import 'package:flutter/material.dart';
import 'package:yangiproect/json/database.dart';
import 'package:yangiproect/json/player.dart';

class BoshSahifa extends StatelessWidget {
  static List<FutbolPkayer> hammaFutbolchilar = [];

  @override
  Widget build(BuildContext context) {
    hammaFutbolchilar = malumotOlibKel();
    return SafeArea(
        child: Scaffold(
          body: listOl(),
    ),
    );
  }*/
  List<FutbolPkayer> malumotOlibKel(){
    List<FutbolPkayer> Fytbolchilar = [];
    for(int i = 0; i < 10; i++){

      FutbolPkayer FutbolchilarQosh = FutbolPkayer(
        Strings.FUTBOLCHI_ISIMLARI[i],);
      Fytbolchilar.add(FutbolchilarQosh);
    }
    return Fytbolchilar;
  }
  listOl(){
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 100.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35.0),
              bottomRight: Radius.circular(35.0),
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            title: Container(
              width: 380.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 30.0),
                      child: Icon(Icons.menu)),
                  Container(child: Text("❤️LoveChat")),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.search_rounded),
                        Icon(Icons.info_outline),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}*/
/*import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 90.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35.0),
                bottomRight: Radius.circular(35.0),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.all(25.0),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 18.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "LoveChat",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 14.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 14.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: Colors.white,
                  height: 680.0,
                  margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 80.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chat List",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -2.0,
                        ),
                      ),
                      Container(
                        width: 66.0,
                        height: 25.0,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Colors.blue,
                              width: 2.5,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "18 Matches",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            flex: 7,
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.check_circle,
                                color: Colors.grey,
                                size: 18.0,
                              ),
                            ),
                            flex: 3,
                          ),
                        ],
                      ),
                      Container(
                        height: 480.0,
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 20.0,
                              ),
                              height: 70.0,
                              color: Colors.white,
                              child: ListTile(
                                contentPadding: EdgeInsets.all(0.0),
                                leading: CircleAvatar(
                                  child: Image.asset("assets/images/" + ''),
                                  radius: 28.0,
                                ),
                                title: Text(
                                  "Name Surname",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                subtitle: Text(
                                  "12 Friend",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.check_circle,
                                  color: Colors.blue,
                                  size: 18.0,
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yangiproect/json/database.dart';
import 'package:yangiproect/models/yangiSahifa.dart';
import 'package:yangiproect/json/player.dart';

class HomePage extends StatelessWidget {
  static List<FutbolPkayer> hammaMalumotlar = [];
  @override
  Widget build(BuildContext context) {
    hammaMalumotlar = malumotOlibKel();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 120.0,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.blue,
                  expandedHeight: 70.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    ),
                  ),
                  actions: [
                    Container(
                      margin: EdgeInsets.only(top: 23.0),
                      width: 370.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20.0),
                            child: Icon(Icons.menu,color: Colors.white,),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10.0),
                            child: Text("❤ LoveChat", style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),)
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 15.0),
                            child: Row(
                              children: [
                                Icon(Icons.search, color: Colors.white,),
                                SizedBox(width: 10.0,),
                                Icon(Icons.info_outline, color: Colors.white,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 40.0),
                  alignment: Alignment.topLeft,
                    child: Text("Chat List", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),)),
                Container(
                  margin: EdgeInsets.only(right: 230.0),
                  width: 66.0,
                  height: 15.0,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.blue,
                        width: 2.5,
                      ),
                    ),
                  ),
                ),
                Container(margin: EdgeInsets.only(right: 13.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("18 Matches",style: TextStyle(color: Colors.grey),),
                      SizedBox(width: 2.0,),
                      Icon(Icons.check_circle_outline, size: 20.0,color: Colors.grey,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 70.0, top: 5.0),
            height: 500.0,
            child: ListView.builder(
                itemBuilder: (context, index){
                  return GestureDetector(
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("${hammaMalumotlar[index].rasomlartur}"),
                              radius: 30.0,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                    color: Colors.white,
                                    width: 160.0,
                                    height: 20.0,
                                    child: Text("${hammaMalumotlar[index].futbolchiismi}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),)),
                                Container(
                                    alignment: Alignment.centerLeft,
                                    width: 160.0,
                                    height: 20.0,
                                    child: Text("${hammaMalumotlar[index].followers}", style: TextStyle(fontSize: 12.0, color: Colors.grey),)),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15.0),
                            child: Icon(Icons.check_circle, color: Colors.blue,size: 20,),
                          )
                        ],
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => YangiSahifa(index)));
                    },
                    onLongPress: (){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              title: Container(
                                padding: EdgeInsets.all(10.0),
                                height: 150.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("${hammaMalumotlar[index].rasomlartur}"),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                child: Text("")),
                              content: Text("${hammaMalumotlar[index].futbolchiismi}", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                            );
                          });
                    },
                  );
                },
              itemCount: 12,
              itemExtent: 120.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: (){
                      showDialog(
                          context: context, builder: (context){
                            return AlertDialog(
                              content: Container(
                                child: SingleChildScrollView(
                                  child: Container(
                                    height: 500.0,
                                    width: 250.0,
                                    child: ListView.builder(
                                      itemCount: 12,
                                      itemBuilder:(context,index){
                                        return Card(
                                          child:
                                        Row(
                                          children: [
                                            Container(
                                                height: 90.0,
                                                width: 90.0,
                                                child: Image.asset("${hammaMalumotlar[index].rasomlartur}",fit: BoxFit.cover,)),
                                            Container(
                                                margin: EdgeInsets.only(left: 10.0),
                                                child: Text("${hammaMalumotlar[index].futbolchiismi}")),
                                          ],
                                        ),);

                                      }
                                    ),
                                  ),
                                ),
                              ),
                            );
                      });
                    },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    fixedSize: Size(135, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                    child: Text("Follow", style: TextStyle(color: Colors.white),),),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.keyboard_arrow_up_sharp),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  List<FutbolPkayer> malumotOlibKel(){
    List<FutbolPkayer> mashinalar = [];
    for(int i = 0; i < 12; i++){
      String rasomlartur = Strings.ISIMLARI_TURI[i].toLowerCase() + "$i.jpg";

      FutbolPkayer qoshiladiganMashina = FutbolPkayer(
        Strings.ISIMLARI_TURI[i],
        Strings.RASIM_LAR[i],
        Strings.FOLOWER_LAR[i],
        Strings.MALUMOT_LAR[i],
      );
      mashinalar.add(qoshiladiganMashina);
    }
    return mashinalar;
  }
}
