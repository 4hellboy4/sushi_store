import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app/consts/color.dart';
import 'package:sushi_app/pages/details_page/details_page.dart';
import 'package:sushi_app/provider/food_provider.dart';
import 'package:sushi_app/widgets/food_tile/food_tile.dart';
import 'package:sushi_app/widgets/intro_page_button/intro_page_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void goToDetails(int ind) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsPage(index: ind),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        centerTitle: true,
        title: Text(
          "Tokyo",
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 35),
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: darkred,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Get 20% Promo",
                          style: GoogleFonts.dmSerifDisplay(
                              fontSize: 22, color: white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        IntroPageButton(
                          name: "Redeem",
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Image.asset(
                      "assets/images/free-icon-sushi-2252075.png",
                      height: 100,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: white),
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Search here...",
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Food Menu",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900],
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: SizedBox(
                  height: 200,
                  child: Consumer<FoodProvider>(
                    builder: (_, data, __) => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.food.length,
                      itemBuilder: (context, ind) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: FoodTile(
                            name: data.food[ind].name,
                            price: data.food[ind].price,
                            imagePath: data.food[ind].imagePath,
                            rating: data.food[ind].rating,
                            onTapped: () => goToDetails(ind),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () => goToDetails(2),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(15),
                              child: Image.asset(
                                "assets/images/free-icon-sushi-roll-5229619.png",
                                height: 110,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Sushi Pososotos",
                                  style: GoogleFonts.dmSerifDisplay(
                                    fontSize: 18,
                                  ),
                                ),
                                const Text(
                                  "\$30.0",
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Icon(
                            Icons.favorite,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
