import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/category_cell.dart';
import 'package:food_delivery_app/common_widget/most_popular_cell.dart';
import 'package:food_delivery_app/common_widget/popular_restaurants_row.dart';
import 'package:food_delivery_app/common_widget/recent_item.dart';
import 'package:food_delivery_app/common_widget/roundtextfield.dart';
import 'package:food_delivery_app/common_widget/view_all_title_row.dart';

class HomeVeiw extends StatefulWidget {
  const HomeVeiw({super.key});

  @override
  State<HomeVeiw> createState() => _HomeVeiwState();
}

class _HomeVeiwState extends State<HomeVeiw> {
  TextEditingController txtSearch = TextEditingController();

  List catArr = [
    {"image": "assets/images/Burger.png", "name": "Offers"},
    {"image": "assets/images/plate_of_foods.png", "name": "Sri Lankar"},
    {"image": "assets/images/Italian_food.png", "name": "Italian"},
    {"image": "assets/images/Indian_food.png", "name": "Indian"},
  ];

  List popArr = [
    {
      "image": "assets/images/Pizza.png",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Café",
      "location": "Western Food"
    },
    {
      "image": "assets/images/cafe_de_noir.png",
      "name": "Café de Noir",
      "rate": "4.9",
      "rating": "124",
      "type": "Café",
      "location": "Western Food"
    },
    {
      "image": "assets/images/Bakery_food.png",
      "name": "Bakes by Tella",
      "rate": "4.9",
      "rating": "124",
      "type": "Café",
      "location": "Western Food"
    },
  ];

  List mostPopArr = [
    {
      "image": "assets/images/pizza2.png",
      "name": "Café De Bambaa",
      "rate": "4.9",
      "type": "Café",
      "location": "Western Food"
    },
    {
      "image": "assets/images/bread_burger.png",
      "name": "Burger by Bella",
      "rate": "4.9",
      "type": "Café",
      "location": "Western Food"
    },
  ];

  List recArr = [
    {
      "image": "assets/images/rec_pizza.png",
      "name": "Mulberry Pizza by Josh",
      "rate": "4.9",
      "rating": "124",
      "type": "Café",
      "location": "Western Food"
    },
    {
      "image": "assets/images/barita.png",
      "name": "Barita",
      "rate": "4.9",
      "rating": "124",
      "type": "Café",
      "location": "Coffee"
    },
    {
      "image": "assets/images/pizza3.png",
      "name": "Pizza Rush Hour",
      "rate": "4.9",
      "rating": "124",
      "type": "Café",
      "location": "Italian Food"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 56,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Good morning Victor!",
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 28,
                          fontWeight: FontWeight.w800),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/images/shopping_cart.png",
                          width: 25,
                          height: 25,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivering to",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Current Location",
                          style: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Image.asset(
                          "assets/images/dropdown.png",
                          width: 25,
                          height: 25,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RoundTextField(
                    hintText: "Search Food",
                    controller: txtSearch,
                    left: Container(
                      alignment: Alignment.center,
                      width: 30,
                      child: Image.asset(
                        "assets/images/search_bar.png",
                        width: 20,
                        height: 20,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: catArr.length,
                    itemBuilder: ((context, index) {
                      var c0bj = catArr[index] as Map? ?? {};
                      return CategoryCell(
                        c0bj: c0bj, 
                        onTap: (){},
                      );
                    })),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: "Popular Restaurants",
                  onView: () {},
                )
              ),

               const SizedBox(
                height: 10,
              ),

              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: popArr.length,
                  itemBuilder: ((context, index) {
                    var p0bj = popArr[index] as Map? ?? {};
                    return PopularRestaurantsRow(
                      p0bj: p0bj, 
                      onTap: (){},
                    );
                  })
                ),

                  const SizedBox(
                    height: 30,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ViewAllTitleRow(
                      title: "Most Popular",
                      onView: () {},
                    )
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        itemCount: mostPopArr.length,
                        itemBuilder: ((context, index) {
                          var m0bj = mostPopArr[index] as Map? ?? {};
                          return MostPopularCell(
                            m0bj: m0bj, 
                            onTap: (){},
                          );
                        })),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ViewAllTitleRow(
                      title: "Recent Items",
                      onView: () {},
                    )
                  ),

                   const SizedBox(
                    height: 10,
                  ),

                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: recArr.length,
                    itemBuilder: ((context, index) {
                      var r0bj = recArr[index] as Map? ?? {};
                      return RecentItem(
                        r0bj: r0bj, 
                        onTap: (){},
                      );
                    })
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
