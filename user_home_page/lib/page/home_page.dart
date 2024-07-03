import 'package:flutter/material.dart';
import 'package:user_home_page/widgets/dropdown_btn.dart';
import 'package:user_home_page/widgets/multiselect_dropdown_btn.dart';
import 'package:user_home_page/widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Star shop',
          // textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 51,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(5),
                  child: Chip(
                    label: Text(
                      'Category',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
              itemCount: 5,
            ),
          ),
          Row(
            children: [
              Flexible(
                child: DropdownBtn(
                  items: ['Rs: Low to High', 'Rs: High to Low'],
                  selectedItemText: 'Sort',
                  onSelected: (selected) {},
                ),
              ),
              Flexible(
                child: Card(
                  child: MultiselectDropdownBtn(
                    items: ['item1', 'item2', 'item3'],
                    onSelectionChanged: (selectedItems) {},
                  ),
                ),
              ),

            ],
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ProductCard();
                }),
          ),
        ],
      ),
    );
  }
}
