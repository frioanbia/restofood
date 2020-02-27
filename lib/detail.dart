import 'package:flutter/material.dart';
import 'package:restofood/model/food.dart';

class Detail extends StatelessWidget {
  final Food listFood;

  const Detail({Key key, this.listFood}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          listFood.name,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 50.0),
          ),
          Icon(Icons.fastfood)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // bagian untuk load gambar
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                  child: Image.asset(
                    "images/${listFood.image}",
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width * 0.5,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 100,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          listFood.name,
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        Text(
                          "Harga: Rp ${listFood.price}",
                          style: TextStyle(fontSize: 8, color: Colors.white),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.assignment,
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Deskripsi: ",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new Text(
                      listFood.fullDes,
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
