import 'package:flutter/material.dart';
import 'package:ui_13/core/color.dart';

class FertilizingTomatoesPage extends StatelessWidget {
  const FertilizingTomatoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('How to Fertilize Tomatoes'),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              _buildSection(
                context,
                'When to Fertilize Tomatoes',
                'Tomatoes should be fertilized once a month during the growing season, which is typically from spring to late summer. It is best to fertilize early in the morning or late in the afternoon when the sun is not too strong.',
              ),
              _buildSection(
                context,
                'Types of Fertilizers for Tomatoes',
                'There are two main types of fertilizers for tomatoes: organic and synthetic. Organic fertilizers are made from natural materials, such as compost or manure. Synthetic fertilizers are made from chemicals and are often easier to use and more concentrated than organic fertilizers.',
              ),
              _buildSection(
                context,
                'How to Apply Fertilizer to Tomatoes',
                'To apply fertilizer to your tomatoes, sprinkle it around the base of the plants and then water it in well. Be careful not to get fertilizer on the leaves, as this can burn them. You can also use a liquid fertilizer and apply it with a watering can or sprayer.',
              ),
              _buildSection(
                context,
                'Common Fertilizing Mistakes',
                'Some common mistakes when fertilizing tomatoes include over-fertilizing, which can lead to excessive growth and poor fruit production, and under-fertilizing, which can result in stunted growth and small fruit. It is important to follow the instructions on the fertilizer package and not to apply too much fertilizer.',
              ),
              _buildSection(
                context,
                'Tips for Fertilizing Tomatoes',
                'Here are some tips to help you fertilize your tomatoes successfully:\n\n- Test your soil before fertilizing to determine its nutrient levels.\n- Use a balanced fertilizer with equal amounts of nitrogen, phosphorus, and potassium.\n- Water your tomatoes before and after fertilizing to help the fertilizer penetrate the soil.\n- Apply fertilizer evenly around the base of the plants.\n- Don\'t fertilize too late in the growing season, as this can delay the ripening of fruit.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, String content) {
    return ExpansionTile(
      title: Text(title),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(content),
        ),
      ],
    );
  }
}
