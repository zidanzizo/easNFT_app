import 'package:easnft_app/shared/themes.dart';
import 'package:flutter/material.dart';

class HomeTopCreatorItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String value;
  const HomeTopCreatorItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      width: 118,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: cardColor,
      ),
      child: Column(
        children: [
          Container(
            height: 58,
            width: 58,
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bodyBackgroundColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.check_circle_rounded,
                    size: 14,
                    color: yellowColor,
                  ),
                ),
              ),
            ),
          ),
          Text(
            name,
            style: whiteTextStyle.copyWith(
              fontFamily: mediumText,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            '\$$value',
            style: greyTextStyle.copyWith(
              fontFamily: mediumText,
            ),
          )
        ],
      ),
    );
  }
}
