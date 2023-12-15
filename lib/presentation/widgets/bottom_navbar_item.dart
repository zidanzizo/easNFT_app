import 'package:easnft_app/shared/themes.dart';
import 'package:flutter/material.dart';

class BottomNavbarItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final bool isProfile;
  final int id;
  final int currentIndex;
  final VoidCallback? onTap;
  const BottomNavbarItem({
    super.key,
    required this.iconUrl,
    required this.title,
    this.isProfile = false,
    required this.id,
    required this.currentIndex,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Column(
        children: [
          isProfile
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    iconUrl,
                    width: 24,
                  ),
                )
              : Image.asset(
                  iconUrl,
                  width: 24,
                  color: id == currentIndex ? primaryColor : greyColor,
                ),
          const SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: greyTextStyle.copyWith(
              fontSize: 10,
              fontFamily: mediumText,
              color: id == currentIndex ? primaryColor : null,
            ),
          )
        ],
      ),
    );
  }
}
