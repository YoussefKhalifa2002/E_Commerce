import 'package:flutter/cupertino.dart';

class CreatedForYou extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imageName;
  const CreatedForYou({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => {},
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            child: Image(
              width: 174,
              height: 201,
              image: AssetImage(imageName),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          itemName,
          style: const TextStyle(
            fontSize: 17.3,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          itemPrice,
          style: const TextStyle(fontSize: 16.3, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
