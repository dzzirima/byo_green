import 'package:flutter/material.dart';

class HydroponicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hydroponics'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text('What is Hydroponics?'),
                subtitle: Text(
                    'Hydroponics is a method of growing plants without soil, using water or nutrient-enriched solutions instead. It can be done in an indoor controlled environment, with or without the support of an inert medium such as sand, gravel, or perlite. Hydroponics can foster rapid growth, stronger yields, and superior quality of plants.'),
              ),
              ExpansionTile(
                title: Text('Advantages'),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          '1. Allows for year-round growing and can produce faster-growing and higher-yielding plants.'),
                      Text(
                          '2. Reduces water consumption and the need for pesticides.'),
                      Text('3. Can be set up almost anywhere.'),
                      Text(
                          '4. Since the nutrients are directly supplied to the roots, plants don\'t have to search for them, which saves space.'),
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
                      Text('1. Requires more initial investment in equipment.'),
                      Text(
                          '2. Plants can be more susceptible to power outages.'),
                      Text(
                          '3. The hydroponic system requires continuous monitoring of the pH and nutrient levels.'),
                      Text(
                          '4. If not managed properly, the plants can be vulnerable to diseases and pests.'),
                    ],
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Simple DIY Hydroponic Systems'),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          '1. The Kratky Method: The simplest method of hydroponic gardening, which requires no electricity or pumps. The plants are grown in a container filled with nutrient-rich water, and the roots draw the nutrients as they grow. This method is ideal for growing small herbs and lettuce indoors.'),
                      Text(
                          '2. Deep Water Culture (DWC): Similar to the Kratky method, this system uses a container filled with nutrient-rich water, but a pump is used to continuously circulate the water so that the roots get a constant supply of nutrients.'),
                      Text(
                          '3. Drip System: This system uses a timer to regulate the flow of nutrient solution to the plant roots, which are usually grown in a soilless medium such as vermiculite or perlite. The nutrient solution is dripped onto the medium and then flows through the roots and back to the reservoir.'),
                      Text(
                          '4. Nutrient Film Technique (NFT): This system uses a shallow tray to hold the plants and a pump to circulate the nutrient solution over the roots. The excess solution then drains back into the reservoir, and the process repeats.'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
