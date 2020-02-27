import 'package:restofood/model/food.dart';

class FoodData {
  static List<Food> getFoods() {
    var _foods = new List<Food>();
    _foods.add(Food(
      name: "Ayam Bakar",
      dec: "Ayam bakar Super",
      price: 15000,
      image: "food-1.png",
      fullDes:
          "Ayam Bakar Pak mamat yang terkenal mantap, gurih, sedap, ini memiliki cita rasa yang berbeda dari kebanyakan" +
              " " +
              "restoran yang ada dijakarta ini Karena memiliki cita rasa yang khas asli betawi punya, dan wajib dicoba bagi para vlogger food.",
    ));

    _foods.add(Food(
      name: "Sate Ayam",
      dec: "Sate Ayam Pak Udin",
      price: 25000,
      image: "food-2.png",
      fullDes:
          "Sate ayam pak udin yang beralamat di boyolali jawa tengah ini memiliki cita rasa yang berbeda dari kebanyakan resto yang berada didaerah boyolali" +
              " " +
              "wajib dicoba bagi anda para turis asal indonesia maupun asing.",
    ));

    _foods.add(Food(
      name: "Teh Jus",
      dec: "Teh Jus Bu asri",
      price: 5000,
      image: "drink-1.png",
      fullDes:
          "Teh jus ini memiliki rasa dari pabrik dan langung dibuat paek es plastik juga bisa pake gelas juga bisa",
    ));
    _foods.add(Food(
      name: "Jas Jus",
      dec: "Jas just Bu inem",
      price: 2000,
      image: "drink-2.png",
      fullDes:
          "Enak pkonya enak bikin enak pas dikantong +62 yang duitnya pas pasan pengen minum enak",
    ));
    _foods.add(Food(
      name: "Soto Ayam",
      dec: "Soto Ayam Bu Ani",
      price: 35000,
      image: "food-3.png",
      fullDes:
          "Soto ayam khas solo ini mempunyai cita rasa sendiri dari pada yang lain",
    ));
    _foods.add(Food(
      name: "Karedok",
      dec: "Karedok Bu Ani",
      price: 15000,
      image: "food-4.png",
      fullDes:
          "Karedok khas solo ini mempunyai cita rasa sendiri dari pada yang lain",
    ));
    _foods.add(Food(
      name: "Lemon Tea",
      dec: "Lemon Tea Bu Ani",
      price: 35000,
      image: "drink-3.png",
      fullDes:
          "Lemon Tea khas solo ini mempunyai cita rasa sendiri dari pada yang lain",
    ));
    return _foods;
  }
}
