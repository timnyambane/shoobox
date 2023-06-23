import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heroicons_flutter/heroicons_flutter.dart';
import 'package:shoobox/screens/sneaker_details.dart';
import 'package:shoobox/utils/styles.dart';
import 'package:shoobox/utils/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<bool> iconIsSolidList = List.generate(8, (index) => false);
  @override
  Widget build(BuildContext context) {
    final List<String> brandsList = [
      "images/nike.svg",
      "images/adidas.svg",
      "images/jordan.svg",
      "images/underarmour.svg",
      "images/fila.svg",
      "images/newbalance.svg",
      "images/puma.svg",
      "images/reebok.svg",
    ];

    TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(HeroiconsSolid.bars3BottomLeft),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text(
          "SHOOBOX",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(HeroiconsSolid.shoppingCart),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: roundedInputField(context, searchController),
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          HeroiconsSolid.mapPin,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                                text: "Ships to ", style: Styles.smallText),
                            TextSpan(
                                text: "Astorian Hotel, Eldoret",
                                style: Styles.smallTextBold)
                          ]),
                        ),
                      ],
                    ),
                    const Icon(
                      HeroiconsSolid.chevronRight,
                      size: 16,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 64,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: brandsList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(4.0),
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                      ),
                      child: GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(brandsList[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Card(
              elevation: 4,
              margin: const EdgeInsets.all(8.0),
              color: Colors.transparent,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.blue[200]!, Colors.blue[800]!],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "images/shoes_display.png",
                      width: 100,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Year-End sale",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Upto 90%",
                          style: TextStyle(fontSize: 16),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Shop Now",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New Arrivals"),
                  Text("See all"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SneakerDetails()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('images/bg.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey[300],
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          iconIsSolidList[index] =
                                              !iconIsSolidList[index];
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          iconIsSolidList[index]
                                              ? HeroiconsSolid.heart
                                              : HeroiconsOutline.heart,
                                          color: Styles.redColor,
                                        ),
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 2),
                            Text("Jordan 1 Retro"),
                            SizedBox(height: 4.0),
                            Text(
                              '\$14,044',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
