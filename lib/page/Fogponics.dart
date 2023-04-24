import 'package:flutter/material.dart';

class FogponicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fogponics'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text('What is Fogponics?'),
                subtitle: Text(
                    'Fogponics is a subset of aeroponics that uses a suspension of nutrient-enriched water to deliver nutrients and oxygen to plant roots. It utilizes an ultrasonic fogger (nebulizer) to provide a consistent supply of very fine liquid nutrient solution droplets. This allows the roots to uptake water and nutrients in an incredibly efficient way using the least amount of water compared to other hydroponic system types.'),
              ),
              ExpansionTile(
                title: Text('Advantages'),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('1. Reduces energy costs and water usage.'),
                      Text(
                          '2. Provides great coverage on the roots, resulting in faster absorption by plant roots and faster plant growth.'),
                      Text(
                          '3. Hanging roots get more air than in traditional hydroponic systems.'),
                      Text(
                          '4. All plants get the same coverage of nutrients compared to other hydroponic systems where the plants closest to the water inlet use the nutrients first.'),
                    ],
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Disadvantages'),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          '1. The build-up of salts can clog fogger machine heads.'),
                      Text(
                          '2. Heat from the fog machine atomizer can also be an issue.'),
                      Text(
                          '3. Loss of power can be devastating without a power backup system.'),
                      Text(
                          '4. The initial cost of setting up a fogponics system can be high.'),
                    ],
                  ),
                ],
              ),
              ListTile(
                title: Text('Simpler DIY Aeroponics System'),
                subtitle: Text(
                    'Unfortunately, there is no simple DIY way to set up a fogponics system without spending money on the equipment needed. However, it can be worth the initial investment when set up correctly.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
