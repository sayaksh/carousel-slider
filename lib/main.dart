import 'package:cardcreates/widget/item_card.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CardsCarousel(),
    );
  }
}

class CardsCarousel extends StatefulWidget {
  const CardsCarousel({Key? key}) : super(key: key);

  @override
  State<CardsCarousel> createState() => _CardsCarouselState();
}

List<Map<String, dynamic>> data = [
  {
    'card_no': '*****4013',
    'amount': '\$2,562',
    'bgcolor': Colors.white,
    'icon': Icons.circle_rounded,
  },
  {
    'card_no': '*****1941',
    'amount': '\$144,99',
    'bgcolor': Colors.red,
    'icon': Icons.circle_rounded,
  },
  {
    'card_no': '*****6132',
    'amount': '\$2,562',
    'bgcolor': Colors.orange,
    'icon': Icons.circle_rounded,
  },
  {
    'card_no': '*****9090',
    'amount': '\$2,562',
    'bgcolor': Colors.blue,
    'icon': Icons.circle_rounded
  },
];

class _CardsCarouselState extends State<CardsCarousel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Its using Carousel Slider"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Column(
            children: const [
              Text(
                "Your",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                "Cards",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.zero,
          margin: const EdgeInsets.all(30),
          child: CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: true,
              height: 400.0,
              viewportFraction: 0.3,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 500),
            ),
            items: data.map((e) {
              return ItemCard(
                  cardNo: e['card_no'],
                  amount: e['amount'],
                  color: e['bgcolor'],
                  icon: e['icon']);
            }).toList(),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Activity",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  Text(
                    "       History",
                    style: TextStyle(fontSize: 30, color: Colors.black26),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            '06 June',
            style: TextStyle(fontSize: 20, color: Colors.black26),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.man_outlined),
                  Text(
                    "McDonald's",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "-\$5.99",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.medical_services),
                  Text(
                    "Health Insurance",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "-\$51.41",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.transfer_within_a_station),
                  Text(
                    "Transfer",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "\$510",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.money_sharp),
                  Text(
                    "Bills",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "-\$400.00",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Column(
          children: [
            BottomNavigationBar(
                backgroundColor: Colors.white70,
                currentIndex: 0,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    label: "",
                    icon: Icon(
                      Icons.credit_card,
                      size: 30,
                    ),
                  ),
                  BottomNavigationBarItem(label: "", icon: Icon(Icons.money)),
                  BottomNavigationBarItem(
                    label: "",
                    icon: Icon(Icons.person),
                  ),
                  BottomNavigationBarItem(
                      label: "",
                      icon: Icon(Icons.more_horiz_rounded),
                      backgroundColor: Colors.black),
                ],
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.black,
                iconSize: 20,
                onTap: null,
                elevation: 5),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Container(
                color: Colors.grey,
                height: 4,
                width: 150,
              ),
            ),
          ],
        )
      ]),
    );
  }
}
