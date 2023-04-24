import 'package:flutter/material.dart';
import 'package:ui_13/core/color.dart';
import 'package:ui_13/data/plant_data.dart';

class FloodIrrigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Flood Irrigation'),
      ),
      body: SingleChildScrollView(
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
                  image: AssetImage('${populerPlants[3].imagePath}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text('What is Flood Irrigation?'),
              subtitle: Text(
                  'Flood irrigation is a method of delivering water to croplands using gravity and without pressurization. It involves introducing water to a plain or field and allowing it to soak into the soil to irrigate the plants. Flood irrigation is one of the oldest forms of irrigation and is still used today, particularly in developing nations where water supplies are ample.'),
            ),
            ExpansionTile(
              title: Text('Advantages'),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('1. Saves time on setup and operation.'),
                    Text(
                        '2. Results in uniform plant growth because each plant gets the same amount of water.'),
                    Text(
                        '3. Can be efficient in water use and reduce the need for fertilizer.'),
                    Text(
                        '4. Can lower humidity and increase space efficiency.'),
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
                        '1. Can result in uneven distribution of water to crops.'),
                    Text(
                        '2. Little control over the amount of water supplied to crops.'),
                    Text('3. A lot of water can be lost through evaporation.'),
                    Text(
                        '4. Leveling of land is required, which can be expensive.'),
                    Text(
                        '5. Less efficient compared to other methods of irrigation.'),
                  ],
                ),
              ],
            ),
            ExpansionTile(
              title: Text('DIY Setup'),
              children: [
                ListTile(
                  subtitle: Text(
                      'Flood irrigation is a low-cost method of watering plants that can be as simple as using a bucket.\n 5-liter bottle, or even a hose pipe. However, it is a wasteful irrigation method, especially given the current water shortage problems in many countries, including our own. Additionally, electricity is not required for this method.'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
