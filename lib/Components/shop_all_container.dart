import 'package:flutter/material.dart';

class ShopAllContainer extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imageName;
  const ShopAllContainer({
    super.key,
    required this.imageName,
    required this.itemName,
    required this.itemPrice,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 254,
      width: 331,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Image(
              height: 254,
              width: 170,
              image: AssetImage(imageName),
            ),
          ),
          SizedBox(
            height: 254,
            width: 155,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color.fromRGBO(0, 0, 0, 0.24),
                            )),
                        child: const Icon(
                          Icons.favorite_border,
                          size: 20,
                          color: Color.fromRGBO(0, 0, 0, 0.24),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  itemName,
                  style: const TextStyle(
                    fontSize: 19.3,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(80, 80, 80, 1),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      'Egp',
                      style: TextStyle(
                        fontSize: 15.3,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(48, 48, 48, 0.53),
                      ),
                    ),
                    Text(
                      itemName,
                      style: const TextStyle(
                        fontSize: 21.3,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      '300',
                      style: TextStyle(
                        fontSize: 16.3,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '25%OFF',
                      style: TextStyle(
                        fontSize: 16.3,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(42, 198, 39, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 53,
                ),
                GestureDetector(
                  child: Container(
                    height: 53,
                    width: 155,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(242, 242, 242, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                          fontSize: 16.3,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(57, 57, 57, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
