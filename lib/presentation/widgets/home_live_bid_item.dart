import 'dart:ui';

import 'package:easnft_app/shared/themes.dart';
import 'package:flutter/material.dart';

class HomeLiveBidItem extends StatelessWidget {
  final String imageUrl;
  final String nftName;
  final String nftPrice;
  const HomeLiveBidItem({
    super.key,
    required this.imageUrl,
    required this.nftName,
    required this.nftPrice,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/detail'),
      child: Container(
        height: 400,
        width: 280,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: backgroundColor,
          image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 20),
                child: Container(
                  height: 32,
                  width: 215,
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: whiteGreyColor.withOpacity(0.2),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: whiteColor.withOpacity(0.1),
                    //   ),
                    // ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 46,
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: redColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 5,
                              width: 5,
                              margin: const EdgeInsets.only(right: 2),
                              decoration: BoxDecoration(
                                color: whiteColor,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Text(
                              'Live',
                              style: whiteTextStyle.copyWith(
                                fontSize: 12,
                                fontFamily: semiBoldText,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Image.asset(
                          'assets/icon_time.png',
                          width: 24,
                        ),
                      ),
                      Text(
                        '22h : 25m : 09s',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontFamily: mediumText,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 20),
                child: Container(
                  height: 57,
                  width: double.infinity,
                  padding: const EdgeInsets.all(11),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: whiteColor.withOpacity(0.2),
                    boxShadow: [
                      BoxShadow(
                        color: whiteColor.withOpacity(0.1),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/img_profile.png',
                          width: 35,
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              nftName,
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
                                  'By Bryan Wan',
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/icon_eth.png',
                                width: 8,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                '$nftPrice ETH',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 12,
                                  fontFamily: mediumText,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Highest bid',
                            style: whiteGreyTextStyle.copyWith(fontSize: 10),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
