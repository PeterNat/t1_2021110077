import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget cardMenu(String title, String imagePath) {
      return Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5, // Set tinggi Card
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'BebasNeue',
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
    Widget summerSaleCard() {
      return Card(
        color: const Color.fromARGB(255, 209, 182, 157),
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5, // Set tinggi Card
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              top: 25,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: const Column(
                  children: [
                    Text(
                      'Summer Sale',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BebasNeue',
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '-25%',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BebasNeue',
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'SALE',
                  style: TextStyle(
                    fontFamily: 'BebasNeue',
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        title: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  const Expanded(
                    flex: 3,
                    child: Text(
                      'vibe',
                      style: TextStyle(
                        fontFamily: 'BebasNeue',
                        fontSize: 32,
                      ),
                    ),
                    ),
                  Expanded(
                      flex: 2,
                      child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.qr_code_scanner_rounded),
                          onPressed: () {},
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 16),
              cardMenu(
                'WOMEN',
                'assets/images/home_women.jpg',
              ),
              cardMenu(
                'MEN',
                'assets/images/home_men.jpg',
              ),
              cardMenu(
                'CHILDREN',
                'assets/images/home_children.jpg',
              ),
              summerSaleCard(),
            ],
          ),
        ),
      ),
    );
  }
}
