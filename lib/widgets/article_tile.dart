import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ArticleTile extends StatelessWidget {
  const ArticleTile({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
            foregroundColor: const Color(0xFF202e59),
            padding: const EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: const Color.fromARGB(255, 50, 104, 159)),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              // ignore: deprecated_member_use
              color: Colors.white,
              width: 22,
            ),
            const SizedBox(width: 20),
            Expanded(
                child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                height: 1.4,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            )),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
