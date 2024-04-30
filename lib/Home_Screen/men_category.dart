// import 'package:e_commerce/Components/home_screen_category_top.dart';
import 'package:e_commerce/Components/created_For_You.dart';
import 'package:e_commerce/Components/men_screen_category_top.dart';
import 'package:e_commerce/Components/shop_all_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MenCategory extends StatelessWidget {
  static const String routeName = 'Men Category';
  const MenCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 66,
        title: GradientText(
          'Men',
          colors: const [
            Color.fromRGBO(23, 78, 73, 1),
            Color.fromRGBO(10, 85, 79, 0),
          ],
          style: const TextStyle(
            fontSize: 31.3,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.favorite_border),
              style: const ButtonStyle(
                iconColor: MaterialStatePropertyAll(Colors.grey),
                iconSize: MaterialStatePropertyAll(30),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 22, left: 22),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(72, 158, 158, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  cursorColor: const Color.fromRGBO(23, 78, 73, 1),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color.fromRGBO(106, 106, 106, 1),
                    ),
                    hintStyle: const TextStyle(fontSize: 17),
                    hintText: 'Search your trips',
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.mic,
                        color: Color.fromRGBO(106, 106, 106, 1),
                      ),
                      onPressed: () => {},
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1.0,
                    width: 70.0,
                    color: const Color.fromRGBO(23, 78, 73, 1),
                  ),
                  const Text(
                    'SHOP ALL CATEGORIES',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Color.fromRGBO(52, 64, 84, 1),
                    ),
                  ),
                  Container(
                    height: 1.0,
                    width: 70.0,
                    color: const Color.fromRGBO(23, 78, 73, 1),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const MenCategoryImage(
                        imagePass: 'assets/main_screen/T-Shirt.jpg',
                        type: 'T-Shirt',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const MenCategoryImage(
                        imagePass: 'assets/men_Category/T-Shirt-6.jpeg',
                        type: 'T-Shirt',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const MenCategoryImage(
                        imagePass: 'assets/men_Category/T-Shirt-7.jpeg',
                        type: 'T-Shirt',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const MenCategoryImage(
                        imagePass: 'assets/men_Category/T-Shirt-6.jpeg',
                        type: 'T-Shirt',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const MenCategoryImage(
                        imagePass: 'assets/men_Category/T-Shirt-7.jpeg',
                        type: 'T-Shirt',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const MenCategoryImage(
                        imagePass: 'assets/main_screen/T-Shirt.jpg',
                        type: 'T-Shirt',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Created For You',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(52, 64, 84, 1),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 106,
                    color: const Color.fromRGBO(23, 78, 73, 1),
                    child: const Center(
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CreatedForYou(
                      itemName: 'T-Shirt',
                      itemPrice: '250',
                      imageName: 'assets/men_Category/T-Shirt.jpeg',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CreatedForYou(
                      itemName: 'T-Shirt',
                      itemPrice: '250',
                      imageName: 'assets/men_Category/T-Shirt-2.jpeg',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CreatedForYou(
                      itemName: 'T-Shirt',
                      itemPrice: '250',
                      imageName: 'assets/men_Category/T-Shirt-3.jpeg',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CreatedForYou(
                      itemName: 'T-Shirt',
                      itemPrice: '250',
                      imageName: 'assets/main_screen/T-Shirt.jpg',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1.0,
                    width: 125,
                    color: const Color.fromRGBO(23, 78, 73, 1),
                  ),
                  const Text(
                    'SHOP ALL',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Color.fromRGBO(52, 64, 84, 1),
                    ),
                  ),
                  Container(
                    height: 1.0,
                    width: 125,
                    color: const Color.fromRGBO(23, 78, 73, 1),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const ShopAllContainer(
                imageName: 'assets/men_Category/T-Shirt-4.jpeg',
                itemName: 'Shemiz',
                itemPrice: '250',
              ),
              const SizedBox(
                height: 20,
              ),
              const ShopAllContainer(
                imageName: 'assets/men_Category/T-Shirt-5.jpeg',
                itemName: 'Shemiz',
                itemPrice: '250',
              ),
              const SizedBox(
                height: 20,
              ),
              const ShopAllContainer(
                imageName: 'assets/men_Category/T-Shirt-4.jpeg',
                itemName: 'Shemiz',
                itemPrice: '250',
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
