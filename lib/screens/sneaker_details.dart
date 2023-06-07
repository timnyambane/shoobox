import 'package:flutter/material.dart';
import 'package:heroicons_flutter/heroicons_flutter.dart';
import 'package:shoobox/utils/styles.dart';

class SneakerDetails extends StatefulWidget {
  const SneakerDetails({super.key});

  @override
  State<SneakerDetails> createState() => _SneakerDetailsState();
}

class _SneakerDetailsState extends State<SneakerDetails> {
  int selectedImageIndex = 0;
  int? selectedSize;
  int selectedIndex = -1;

  void selectImage(int index) {
    setState(() {
      selectedImageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> imagePaths = [
      'images/one.jpg',
      'images/two.jpg',
      'images/three.jpg',
      'images/four.jpg',
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          title: const Text(
            "Sneaker Details",
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.45,
              child: Image.asset(
                imagePaths[selectedImageIndex],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(imagePaths.length, (index) {
              bool isSelected = index == selectedImageIndex;

              return GestureDetector(
                onTap: () => selectImage(index),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: isSelected ? Colors.blue : Colors.transparent,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        imagePaths[index],
                        fit: BoxFit.cover,
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Jordan Low Tops",
                      style: Styles.bodyTextS,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(HeroiconsOutline.heart),
                        color: Styles.redColor)
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    '\$14,044',
                    style: Styles.bodyTextL,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.grey[300]),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Text(
                      "5 pairs left",
                      style: Styles.caption,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.grey[300]),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Text(
                      "210 sold",
                      style: Styles.caption,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.grey[300]),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        Icon(HeroiconsSolid.star,
                            size: 15, color: Styles.redColor),
                        Text(
                          " 4.7",
                          style: Styles.caption,
                        ),
                        Text(
                          "  (69 Reviews)",
                          style: Styles.smallTextGray,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(height: 4),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Select Size",
                  style: Styles.bodyTextL,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
