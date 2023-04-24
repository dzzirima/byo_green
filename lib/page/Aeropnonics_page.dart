import 'package:flutter/material.dart';
import 'package:ui_13/core/color.dart';
import 'package:ui_13/data/plant_data.dart';

class AeroponicsPage extends StatefulWidget {
  @override
  _AeroponicsPageState createState() => _AeroponicsPageState();
}

class _AeroponicsPageState extends State<AeroponicsPage> {
  bool _showAdvantages = false;
  bool _showDisadvantages = false;
  bool _showDIYSetup = false;
  bool _showVegetables = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Aeroponics'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
                  image: AssetImage('${populerPlants[0].imagePath}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Divider(),
            ListTile(
              title: Text('What is Aeroponics?'),
              subtitle: Text(
                  'Aeroponics is the process of growing plants in an air or mist environment without soil or an aggregate medium. The word "aeroponic" is derived from the Greek meanings of aer ("air") and ponos ("labour"). It is a subset of hydroponics, since water is used in aeroponics to transmit nutrients . Aeroponic systems use water, liquid nutrients and a soilless growing medium to quickly and efficiently grow more colorful, tastier, better smelling and incredibly nutritious produce .'),
            ),
            ExpansionTile(
              title: Text('Advantages'),
              onExpansionChanged: (value) {
                setState(() {
                  _showAdvantages = value;
                });
              },
              children: <Widget>[
                _showAdvantages
                    ? ListTile(
                        title: Text('Plants grow quickly'),
                        subtitle: Text('Due to constant access to oxygen'),
                      )
                    : Container(),
                _showAdvantages
                    ? ListTile(
                        title: Text('Higher water and nutrient use efficiency'),
                      )
                    : Container(),
                _showAdvantages
                    ? ListTile(
                        title: Text('Requires little space'),
                      )
                    : Container(),
              ],
            ),
            ExpansionTile(
              title: Text('Disadvantages'),
              onExpansionChanged: (value) {
                setState(() {
                  _showDisadvantages = value;
                });
              },
              children: <Widget>[
                _showDisadvantages
                    ? ListTile(
                        title: Text('Requires constant monitoring'),
                      )
                    : Container(),
                _showDisadvantages
                    ? ListTile(
                        title: Text('Expensive to set up initially'),
                      )
                    : Container(),
                _showDisadvantages
                    ? ListTile(
                        title: Text('Highly susceptible to power outages'),
                      )
                    : Container(),
                _showDisadvantages
                    ? ListTile(
                        title: Text('Requires technical knowledge to operate'),
                      )
                    : Container(),
              ],
            ),
            ExpansionTile(
              title: Text('DIY Setup'),
              onExpansionChanged: (value) {
                setState(() {
                  _showDIYSetup = value;
                });
              },
              children: <Widget>[
                _showDIYSetup
                    ? ListTile(
                        title: Text('5-gallon bucket'),
                      )
                    : Container(),
                _showDIYSetup
                    ? ListTile(
                        title: Text(
                            'Food-grade bucket lid with holes for net pots'),
                      )
                    : Container(),
                _showDIYSetup
                    ? ListTile(
                        title: Text('Submersible water pump'),
                      )
                    : Container(),
                _showDIYSetup
                    ? ListTile(
                        title: Text('Misting nozzles'),
                      )
                    : Container(),
                _showDIYSetup
                    ? ListTile(
                        title: Text('PVC pipes'),
                      )
                    : Container(),
                _showDIYSetup
                    ? ListTile(
                        title: Text('Growing medium'),
                      )
                    : Container(),
                _showDIYSetup
                    ? ListTile(
                        title: Text(
                            '1. Prepare the Bucket’s Lid for the Net Pots: Carefully mark and cut holes in the food-grade bucket lid ².'),
                      )
                    : Container(),
                _showDIYSetup
                    ? ListTile(
                        title: Text(
                            '2. Install a Water Pump: Place a submersible water pump at the bottom of the bucket '),
                      )
                    : Container(),
                _showDIYSetup
                    ? ListTile(
                        title: Text(
                            '3. Attach Misting Nozzles: Attach misting nozzles to PVC pipes and connect them to the water pump.'),
                      )
                    : Container(),
                _showDIYSetup
                    ? ListTile(
                        title: Text(
                            "4. Add Water and Nutrients: Fill the bucket with water and add nutrients according to the manufacturer's instruction"),
                      )
                    : Container(),
                _showDIYSetup
                    ? ListTile(
                        title: Text(
                            '5. Install Net Pots: Place net pots in the holes you cut in the lid and fill them with a growing medium'),
                      )
                    : Container(),
                _showDIYSetup
                    ? ListTile(
                        title:
                            Text('6. Add Plants: Add plants to the net pots'),
                      )
                    : Container(),
                _showDIYSetup
                    ? ListTile(
                        title: Text(
                            ' Turn on the Pump: Turn on the water pump to start misting the roots'),
                      )
                    : Container(),
              ],
            ),
            ExpansionTile(
              title: Text('Common Vegetables that work well with aeroponics'),
              onExpansionChanged: (value) {
                setState(() {
                  _showVegetables = value;
                });
              },
              children: <Widget>[
                _showVegetables
                    ? ListTile(
                        title: Text('Lettuce'),
                      )
                    : Container(),
                _showVegetables
                    ? ListTile(
                        title: Text('Spinach'),
                      )
                    : Container(),
                _showVegetables
                    ? ListTile(
                        title: Text('Tomatoes'),
                      )
                    : Container(),
                _showVegetables
                    ? ListTile(
                        title: Text('Cucumbers'),
                      )
                    : Container(),
                _showVegetables
                    ? ListTile(
                        title: Text('Carrots'),
                      )
                    : Container(),
                _showVegetables
                    ? ListTile(
                        title: Text('Basil'),
                      )
                    : Container(),
                _showVegetables
                    ? ListTile(
                        title: Text('Mint'),
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
