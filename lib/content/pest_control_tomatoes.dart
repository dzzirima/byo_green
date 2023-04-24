import 'package:flutter/material.dart';
import 'package:ui_13/core/color.dart';

class PestControlTomatoesPage extends StatelessWidget {
  const PestControlTomatoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('How to Do Pest Control for Tomatoes'),
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
                'Preventing Pest Problems',
                'The best way to control pests in your tomato plants is to prevent problems from occurring in the first place. Here are some tips to prevent pest problems:\n\n- Plant tomato varieties that are resistant to common pests in your area.\n- Keep the area around your tomato plants clean and free of debris, which can attract pests.\n- Rotate your tomato plants regularly to prevent pests from building up in the soil.\n- Use row covers to protect your tomato plants from pests.',
              ),
              _buildSection(
                context,
                'Identifying Common Tomato Pests',
                'Here are some common pests that can affect tomato plants:\n\n- Aphids\n- Spider mites\n- Whiteflies\n- Tomato hornworms\n- Cutworms\n- Fruit flies\n\nIt is important to identify the pest that is affecting your tomato plants in order to choose the most effective pest control method.',
              ),
              _buildSection(
                context,
                'Chemical Pest Control',
                'Chemical pest control should be a last resort, as it can harm beneficial insects and pollinators. If you decide to use chemical pest control, be sure to follow the instructions on the label carefully. Here are some common chemical pest control options:\n\n- Insecticidal soap\n- Neem oil\n- Pyrethrin\n- Bacillus thuringiensis (Bt)',
              ),
              _buildSection(
                context,
                'Organic Pest Control',
                'Organic pest control methods are safer for the environment and for beneficial insects. Here are some common organic pest control options:\n\n- Handpicking pests off of plants\n- Using companion planting to repel pests\n- Spraying plants with a mixture of water and dish soap\n- Applying diatomaceous earth around the base of plants',
              ),
              _buildSection(
                context,
                'Preventing Pest Resistance',
                'Pests can develop resistance to chemical pesticides over time, making them less effective. To prevent pest resistance, follow these tips:\n\n- Use chemical pesticides only as a last resort.\n- Rotate between different types of pesticides to prevent pests from developing resistance.\n- Use pesticides only when necessary, and follow the instructions on the label carefully.',
              ),
              _buildSection(
                context,
                'Common Tomato Diseases and Solutions',
                'Here are some common tomato diseases and their solutions or pesticides:\n\n- Early blight: Remove infected leaves and apply a copper fungicide.\n- Late blight: Remove infected leaves and apply a copper fungicide.\n- Verticillium wilt: Remove infected plants and rotate crops.\n- Fusarium wilt: Remove infected plants and rotate crops.\n- Blossom end rot: Ensure consistent watering and provide adequate calcium.\n- Septoria leaf spot: Remove infected leaves and apply a copper fungicide.\n- Bacterial spot: Remove infected leaves and apply copper or streptomycin.\n- Tomato mosaic virus: Remove infected plants and control aphids.\n- Tomato yellow leaf curl virus: Control whiteflies and use resistant varieties.\n\nIt is important to correctly identify the disease affecting your tomato plants in order to choose the most effective solution or pesticide.',
                // Add a comment to the section
                // Note that the solutions or pesticides listed for each disease are not exhaustive and that it's important to follow the instructions on the label carefully when applying any chemical treatment. Additionally, it's always a good idea to consult with a local agricultural extension office or a licensed pest control professional for advice on controlling tomato diseases in your specific area.
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, String content) {
    return ExpansionTile(
      title: Text(
        title,
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(content),
        ),
      ],
    );
  }
}
