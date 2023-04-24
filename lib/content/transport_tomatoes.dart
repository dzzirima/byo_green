import 'package:flutter/material.dart';
import 'package:ui_13/core/color.dart';

class TransportingTomatoesPage extends StatelessWidget {
  const TransportingTomatoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('How to Transport Tomatoes'),
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
                    image: AssetImage("assets/images/tomato.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Divider(),
              _buildSection(
                context,
                'When to Transport Tomatoes',
                'Tomatoes should be transported as soon as possible after they are harvested. The longer they sit, the more likely they are to bruise or spoil. Ideally, tomatoes should be transported within 24 hours of being harvested.',
              ),
              _buildSection(
                context,
                'Preparing Tomatoes for Transport',
                'To prepare tomatoes for transport, you should:\n\n- Choose firm, ripe tomatoes that are free from bruises or blemishes.\n- Pack the tomatoes in a single layer in a sturdy container. Do not stack the tomatoes on top of each other.\n- Wrap each tomato in a soft material, such as newspaper or tissue paper, to prevent them from rubbing against each other.\n- Keep the tomatoes cool during transport by placing them in a cooler or insulated container.',
              ),
              _buildSection(
                context,
                'Transporting Tomatoes by Car',
                'If you are transporting tomatoes by car, you should:\n\n- Place the container of tomatoes on the floor of the car, rather than on a seat or in the trunk.\n- Drive carefully to avoid sudden stops or turns that could cause the tomatoes to shift or fall over.\n- Keep the air conditioning on to keep the tomatoes cool.',
              ),
              _buildSection(
                context,
                'Transporting Tomatoes by Truck',
                'If you are transporting tomatoes by truck, you should:\n\n- Choose a truck with a smooth, level floor to prevent the tomatoes from rolling around.\n- Secure the container of tomatoes to prevent it from moving during transport.\n- Use a refrigerated truck to keep the tomatoes cool during transport.',
              ),
              _buildSection(
                context,
                'Tips for Transporting Tomatoes',
                'Here are some additional tips to help you transport tomatoes safely:\n\n- Check the temperature of the tomatoes regularly during transport, and adjust the cooling as needed.\n- Avoid transporting tomatoes with other fruits or vegetables that produce ethylene gas, as this can cause tomatoes to ripen too quickly and spoil.\n- Handle the tomatoes gently to avoid bruising or damaging them.\n- If you notice any spoiled or damaged tomatoes during transport, remove them immediately to prevent the spoilage from spreading to other tomatoes.',
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
