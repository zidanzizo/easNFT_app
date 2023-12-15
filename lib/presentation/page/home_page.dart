import 'package:easnft_app/presentation/widgets/home_live_bid_item.dart';
import 'package:easnft_app/presentation/widgets/home_top_creator_item.dart';
import 'package:easnft_app/shared/themes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          searchSection(),
          liveBidsSection(),
          topCreatorSection(),
        ],
      ),
    );
  }

  Widget topCreatorSection() {
    return Container(
      margin: const EdgeInsets.only(bottom: 90),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleSection('Top Creator'),
          const SizedBox(
            height: 12,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                HomeTopCreatorItem(
                  imageUrl: 'assets/img_top_creator1.png',
                  name: '1Cyborg',
                  value: '3.350.100',
                ),
                HomeTopCreatorItem(
                  imageUrl: 'assets/img_top_creator2.png',
                  name: 'B0ldMan',
                  value: '935.200',
                ),
                HomeTopCreatorItem(
                  imageUrl: 'assets/img_top_creator3.png',
                  name: 'GGaming7',
                  value: '2.100.250',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget liveBidsSection() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleSection('Live Bids'),
          const SizedBox(
            height: 12,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                HomeLiveBidItem(
                  imageUrl: 'assets/img_live_bid1.png',
                  nftName: 'Astroboy #001',
                  nftPrice: '2.70',
                ),
                HomeLiveBidItem(
                  imageUrl: 'assets/img_live_bid2.png',
                  nftName: 'Azuki #7626',
                  nftPrice: '1.90',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding titleSection(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 20,
              fontFamily: mediumText,
            ),
          ),
          Text(
            'See More',
            style: greyTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget searchSection() {
    return Container(
      margin: const EdgeInsets.only(
        top: 12,
        bottom: 20,
        left: 20,
        right: 20,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 46,
              width: double.infinity,
              margin: const EdgeInsets.only(right: 18),
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 11),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: backgroundColor,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_search.png',
                    width: 24,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      style: whiteTextStyle.copyWith(fontSize: 12),
                      decoration: InputDecoration(
                        hintText: 'Search NFT',
                        hintStyle: greyTextStyle.copyWith(
                          fontSize: 12,
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/icon_mic.png',
                    width: 24,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 46,
            width: 46,
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: backgroundColor,
            ),
            child: Center(
              child: Image.asset(
                'assets/icon_notif.png',
                width: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}
