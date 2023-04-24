import 'package:flutter/material.dart';
import 'package:ui_13/core/color.dart';
import 'package:ui_13/data/plant_model.dart';

class WaterTomatoesPage extends StatefulWidget {
  const WaterTomatoesPage({Key? key, required this.plant}) : super(key: key);
  final Plants plant;
  @override
  _WaterTomatoesPageState createState() => _WaterTomatoesPageState();
}

class _WaterTomatoesPageState extends State<WaterTomatoesPage> {
  final List<Map<String, dynamic>> _sections = [
    {"title": "Why is watering important?", "content": "", "isOpen": true},
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("How to Water Tomatoes"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height / 3,
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
                    image: AssetImage("assets/images/tomato.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Divider(),
              ListView.builder(
                shrinkWrap: true,
                itemCount: _sections.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text(
                          _sections[index]['title'],
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Icon(
                          _sections[index]['isOpen']
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          size: 30.0,
                        ),
                        onTap: () {
                          setState(() {
                            _sections[index]['isOpen'] =
                                !_sections[index]['isOpen'];
                          });
                        },
                      ),
                      if (_sections[index]['isOpen'])
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          child: Text(
                            '${widget.plant.watering}',
                            style: const TextStyle(fontSize: 16.0),
                          ),
                        ),
                      if (_sections[index]['isOpen'])
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          child: _getAdditionalContent(index),
                        ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getAdditionalContent(int index) {
    switch (index) {
      case 0:
        return const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Benefits of watering:",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              "- Helps regulate plant temperature\n- Helps transport nutrients to the plant\n- Helps prevent blossom end rot",
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        );
      case 1:
        return const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Signs of overwatering:",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              "- Yellowing leaves\n- Wilting\n- Root rot\n- Fungal growth",
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        );
      case 2:
        return const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "How to check soil moisture:",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              "Stick your finger about an inch into the soil. If it feels dry, it's time to water. If it feels moist, wait a day or two before watering.",
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        );
      case 3:
        return const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "How to water with a watering can:",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              "Water at the base of the plant, avoiding the leaves. Water slowly and deeply to ensure the water reaches the roots.",
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        );
      case 4:
        return const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tips for watering during hot weather:",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              "- Water early in the morning or late in the evening\n- Water deeply to encourage deep root growth\n- Mulch around the plants to help retain moisture\n- Consider using shade cloth to protect the plants from excessive heat",
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        );
      default:
        return Container();
    }
  }
}
