import 'package:easnft_app/shared/themes.dart';
import 'package:flutter/material.dart';

class DetailBidListItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String price;
  final String time;
  const DetailBidListItem({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              imageUrl,
              width: 35,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontFamily: mediumText,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Bid $time min ago',
                      style: whiteGreyTextStyle.copyWith(
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Image.asset(
                      'assets/icon_verif.png',
                      width: 12,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Image.asset(
                'assets/icon_eth.png',
                width: 9,
              ),
              const SizedBox(
                width: 2,
              ),
              Text(
                '$price ETH',
                style: whiteTextStyle.copyWith(
                  fontFamily: mediumText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
