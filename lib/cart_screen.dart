
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            flexibleSpace: AppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: const Color.fromARGB(255, 0, 0, 0),
                iconSize: 30.0,
                onPressed: () {
                },
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.favorite_border),
                  color: const Color.fromARGB(255, 0, 0, 0),
                  iconSize: 30.0,
                  onPressed: () {
                  },
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const ImageSlider(),
              const DetailProduct(),
            ]),
          ),
        ],
      ),
    );
  }
}

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            SizedBox(
              height: 300.0,
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                children: <Widget>[
                  Image.asset('assets/images/leather_jkt_men1.jpg', fit: BoxFit.cover),
                  Image.asset('assets/images/leather_jkt_men2.jpg', fit: BoxFit.cover),
                  // Add more images as needed
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                2, // Change this to the number of images you have
                (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(horizontal: .0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index ? Colors.blue : Colors.grey,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const Text(
            'Men Jacket',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Black Leather Jacket',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'BebasNeue',
                ),
              ),
              Text(
                'Rp. 150.000',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'BebasNeue',
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          const Text(
            'Voluptate dolor aute ipsum deserunt fugiat enim do fugiat. Mollit consequat ad ex do elit incididunt quis sunt.',
            style: TextStyle(fontSize: 12.0),
          ),
          const Text(
            'see more',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Select size',
            style: TextStyle(
              fontSize: 24.0,
              fontFamily: 'BebasNeue',
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              Card(
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  alignment: Alignment.center,
                  child: const Text(
                    '36',
                    style:
                    TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  alignment: Alignment.center,
                  child: const Text(
                    '38',
                    style:
                    TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  alignment: Alignment.center,
                  child: const Text(
                    '39',
                    style:
                    TextStyle(
                      color: Color.fromARGB(255, 164, 164, 164),
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'review [4]',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'BebasNeue',
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    for (int i = 0; i < 5; i++)
                      const Icon(
                        Icons.star,
                      ),
                  ],
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_down,
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(
                icon: const Icon(
                  Icons.shopping_bag,
                  color: Color.fromARGB(255, 33, 33, 33),
                  ),
                label: const Text(''),
                onPressed: () {},
                 style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(50, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Atur radius sudut sesuai kebutuhan
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 240, 240, 240)),
                 )
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(200, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 42, 42, 42)),
                 ),
                child: const Text(
                  'Go to checkout',
                  style: TextStyle(
                    color: Color.fromARGB(255, 226, 226, 226),
                  ),
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}