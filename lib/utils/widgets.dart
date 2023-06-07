import 'package:flutter/material.dart';
import 'package:heroicons_flutter/heroicons_flutter.dart';
import 'package:shoobox/utils/styles.dart';

Widget roundedInputField(
    BuildContext context, TextEditingController controller) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            HeroiconsSolid.magnifyingGlass,
            // color: Theme.of(context).colorScheme.primary,
          ),
        ),
        Expanded(
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'What are you looking for?',
              border: InputBorder.none,
            ),
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Styles.primaryColor),
          ),
        ),
      ],
    ),
  );
}
