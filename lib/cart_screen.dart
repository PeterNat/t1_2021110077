import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                    flex: 1,
                      child: Icon(
                        Icons.arrow_back_ios_new
                      ),
                    ),
                  Expanded(
                      flex: 5,
                      child: Icon(
                        Icons.favorite_border
                      ),
                  )
                ],
              )
            ],
          ),
        ),
      ),// appBar: AppBar(
      //   title: Text('Full Screen Image'),
      // ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/home_women.jpg', // Ganti dengan path gambar Anda
            fit: BoxFit.cover,
          ),
          // Tambahkan widget lain di bawah gambar jika diperlukan
        ],
      ),
    );
  }
}
