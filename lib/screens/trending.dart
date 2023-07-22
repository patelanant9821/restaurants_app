// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:restaurants_app/util/restaurants.dart';
import 'package:restaurants_app/widgets/search_card.dart';
import 'package:restaurants_app/widgets/trending_item.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Trending Restaurants"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 10.0,
        ),
        child: ListView(
          children: <Widget>[
            SearchCard(),
            const SizedBox(height: 10.0),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: restaurants == null ? 0 : restaurants.length,
              itemBuilder: (BuildContext context, int index) {
                Map restaurant = restaurants[index];

                return TrendingItem(
                  img: restaurant["img"],
                  title: restaurant["title"],
                  address: restaurant["address"],
                  rating: restaurant["rating"],
                );
              },
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
