import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codelab/models/models.dart';
import 'package:flutter_codelab/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(title: 'Kedaiku'),
      bottomNavigationBar: CustomNavBar(),
      body: Container(
          child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5, //make it taller
              viewportFraction: 0.9, //make it wider
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: Category.categories
                .map((category) => HeroCarouselCard(category: category))
                .toList(),
          )
      ),
    );
  }
}

