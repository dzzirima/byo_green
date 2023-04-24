import 'package:flutter/material.dart';
import 'package:ui_13/content/fertilse_tomatoes.dart';
import 'package:ui_13/content/pest_control_tomatoes.dart';
import 'package:ui_13/content/transport_tomatoes.dart';
import 'package:ui_13/content/water_tomatoes.dart';
import 'package:ui_13/core/color.dart';
import 'package:ui_13/data/plant_data.dart';
import 'package:ui_13/data/plant_model.dart';
import 'package:ui_13/widgets/article_tile.dart';

class DetailsPage extends StatelessWidget {
  final Plants plant;
  const DetailsPage({Key? key, required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: height / 2,
                    decoration: BoxDecoration(
                      color: lightGreen,
                      boxShadow: [
                        BoxShadow(
                          color: green.withOpacity(0.2),
                          blurRadius: 15,
                          offset: const Offset(0, 5),
                        ),
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                      image: DecorationImage(
                        image: AssetImage(plant.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: plant.name,
                                    style: TextStyle(
                                      color: black.withOpacity(0.8),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '  (${plant.category} Plant)',
                                    style: TextStyle(
                                      color: black.withOpacity(0.5),
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 30.0,
                              width: 30.0,
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: green,
                                boxShadow: [
                                  BoxShadow(
                                    color: green.withOpacity(0.2),
                                    blurRadius: 15,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Image.asset(
                                'assets/icons/heart.png',
                                color: white,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        RichText(
                          text: TextSpan(
                            text: plant.description,
                            style: TextStyle(
                              color: black.withOpacity(0.5),
                              fontSize: 15.0,
                              height: 1.4,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Text(
                          'Health Benefits',
                          style: TextStyle(
                            color: black.withOpacity(0.9),
                            fontSize: 18.0,
                            height: 1.4,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/icons/sun.png',
                                color: black, height: 24.0),
                            Image.asset('assets/icons/drop.png',
                                color: black, height: 24.0),
                            Image.asset('assets/icons/temperature.png',
                                color: black, height: 24.0),
                            Image.asset('assets/icons/up_arrow.png',
                                color: black, height: 24.0),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        RichText(
                          text: TextSpan(
                            text: plant.healthbenefit,
                            style: TextStyle(
                              color: black.withOpacity(0.5),
                              fontSize: 15.0,
                              height: 1.4,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          'Articles',
                          style: TextStyle(
                            color: black.withOpacity(0.9),
                            fontSize: 25.0,
                            height: 1.4,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),

                        const SizedBox(
                          height: 16.0,
                        ),
                        ArticleTile(
                          icon: "assets/icons/watering.svg",
                          text: "How to water ?${plant.name} ",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WaterTomatoesPage(
                                        plant: plant,
                                      )),
                            );
                          },
                        ),
                        ArticleTile(
                          icon: "assets/icons/fertilise.svg",
                          text: "How to fertilize ?",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const FertilizingTomatoesPage(),
                              ),
                            );
                          },
                        ),
                        ArticleTile(
                          icon: "assets/icons/pot.svg",
                          text: "How to transplant ?",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const TransportingTomatoesPage(),
                              ),
                            );
                          },
                        ),
                        ArticleTile(
                          icon: "assets/icons/pests.svg",
                          text: "Pest Control?",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PestControlTomatoesPage(),
                              ),
                            );
                          },
                        )
                        // const Padding(
                        //   padding: EdgeInsets.all(16.0),
                        //   child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       Text(
                        //         'Disease 1',
                        //         style: TextStyle(
                        //           fontWeight: FontWeight.bold,
                        //           fontSize: 16.0,
                        //         ),
                        //       ),
                        //       Text(
                        //         'Description of Disease 1',
                        //         style: TextStyle(
                        //           fontSize: 14.0,
                        //         ),
                        //       ),
                        //       Text(
                        //         'Control measures for Disease 1',
                        //         style: TextStyle(
                        //           fontSize: 14.0,
                        //         ),
                        //       ),
                        //       SizedBox(height: 16.0),
                        //       Text(
                        //         'Disease 2',
                        //         style: TextStyle(
                        //           fontWeight: FontWeight.bold,
                        //           fontSize: 16.0,
                        //         ),
                        //       ),
                        //       Text(
                        //         'Description of Disease 2',
                        //         style: TextStyle(
                        //           fontSize: 14.0,
                        //         ),
                        //       ),
                        //       Text(
                        //         'Control measures for Disease 2',
                        //         style: TextStyle(
                        //           fontSize: 14.0,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                Image.asset('assets/icons/cart.png',
                    color: black, height: 40.0),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 15.0),
                decoration: BoxDecoration(
                  color: green,
                  boxShadow: [
                    BoxShadow(
                      color: green.withOpacity(0.3),
                      blurRadius: 15,
                      offset: const Offset(0, -5),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                  ),
                ),
                child: Text(
                  'Community',
                  // 'Buy \$${plant.price.toStringAsFixed(0)}',
                  style: TextStyle(
                    color: white.withOpacity(0.9),
                    fontSize: 18.0,
                    height: 1.4,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
