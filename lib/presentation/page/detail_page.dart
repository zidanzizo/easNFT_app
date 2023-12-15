import 'package:easnft_app/presentation/widgets/detail_bid_list_item.dart';
import 'package:easnft_app/presentation/widgets/detail_live_bid_item.dart';
import 'package:easnft_app/presentation/widgets/detail_menu_item.dart';
import 'package:easnft_app/shared/themes.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String selectedMenu = 'NFT Details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            titleSection(context),
            imageDetailSection(),
            nameSection(),
            menuSection(),
            listSection(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10),
        height: 80,
        width: double.infinity,
        child: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: 44,
            width: 228,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icon_live_bid.png',
                    width: 24,
                    color: bodyBackgroundColor,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Place a bid',
                    style: TextStyle(
                      fontFamily: mediumText,
                      color: bodyBackgroundColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget listSection() {
    return Container(
      margin: const EdgeInsets.only(bottom: 80),
      child: const Column(
        children: [
          DetailBidListItem(
            imageUrl: 'assets/img_top_creator1.png',
            name: '1Cyborg',
            price: '2.50',
            time: '9',
          ),
          DetailBidListItem(
            imageUrl: 'assets/img_top_creator2.png',
            name: 'B0ldMan',
            price: '2',
            time: '18',
          ),
          DetailBidListItem(
            imageUrl: 'assets/img_top_creator3.png',
            name: 'awdawjd',
            price: '2.3',
            time: '30',
          ),
        ],
      ),
    );
  }

  Widget menuSection() {
    return Container(
      height: 46,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: cardColor,
      ),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DetailMenuItem(
                title: 'NFT Details',
                selectedMenu: selectedMenu,
                onTap: () {
                  setState(() {
                    selectedMenu = 'NFT Details';
                  });
                },
              ),
              DetailMenuItem(
                title: 'Bid History',
                selectedMenu: selectedMenu,
                onTap: () {
                  setState(() {
                    selectedMenu = 'Bid History';
                  });
                },
              ),
              DetailMenuItem(
                title: 'Transaction',
                selectedMenu: selectedMenu,
                onTap: () {
                  setState(() {
                    selectedMenu = 'Transaction';
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget nameSection() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/img_profile.png',
              width: 42,
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
                  'Lady Cyborg #009',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
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
                      'Owned By Bryan Wan',
                      style: whiteGreyTextStyle.copyWith(
                        fontSize: 12,
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
          Container(
            height: 30,
            width: 78,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(38),
              color: cardColor,
            ),
            child: Center(
              child: Text(
                'Follow',
                style: whiteTextStyle.copyWith(
                  fontSize: 12,
                  fontFamily: mediumText,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget imageDetailSection() {
    return const DetailLiveBidItem(
      imageUrl: 'assets/img_detail.png',
      nftName: 'nftName',
      nftPrice: '2.70',
    );
  }

  Widget titleSection(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              height: 46,
              width: 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: backgroundColor,
              ),
              child: Center(
                child: Image.asset(
                  'assets/icon_arrow_back.png',
                  width: 24,
                ),
              ),
            ),
          ),
          Text(
            'NFT Details',
            style: whiteTextStyle.copyWith(
              fontSize: 20,
              fontFamily: semiBoldText,
            ),
          ),
          const SizedBox(
            height: 46,
            width: 46,
          )
        ],
      ),
    );
  }
}
