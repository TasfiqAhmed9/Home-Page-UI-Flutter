import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://raw.githubusercontent.com/TasfiqAhmed9/TasfiqAhmed9/main/bnr.jpg',
                fit: BoxFit.cover,
                width: double.maxFinite,
                height: 120,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Product Name',
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 0.9,
            ),
            Text(
              'Price',
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              child: Text(
                '10% off',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 7),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 17, 152, 87),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
