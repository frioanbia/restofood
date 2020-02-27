import 'package:flutter/material.dart';
import 'package:restofood/data/food_data.dart';
import 'package:restofood/model/food.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restofood"),
        backgroundColor: Colors.orange,
        leading: Icon(
          Icons.fastfood,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(child: HomeBody()),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Daftar Makanan dan Minuman",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          ListFood()
        ],
      ),
    );
  }
}

class ListFood extends StatefulWidget {
  @override
  _ListFoodState createState() => _ListFoodState();
}

class _ListFoodState extends State<ListFood> {
  List<Food> foods;
  @override
  void initState() {
    super.initState();
    foods = FoodData.getFoods();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[],
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}
