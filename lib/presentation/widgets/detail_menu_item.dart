import 'package:easnft_app/shared/themes.dart';
import 'package:flutter/material.dart';

class DetailMenuItem extends StatelessWidget {
  final String title;
  final String? selectedMenu;
  final VoidCallback? onTap;
  const DetailMenuItem({
    super.key,
    required this.title,
    this.selectedMenu,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        // Define how long the animation should take.
        duration: const Duration(milliseconds: 300),
        // Provide an optional curve to make the animation feel smoother.
        curve: Curves.linearToEaseOut,
        height: 34,
        // width: selectedMenu == title ? 160 : 50,
        padding: EdgeInsets.symmetric(horizontal: selectedMenu == title ? 40 : 20),
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: selectedMenu == title ? yellowDarkColor : null,
        ),
        child: Center(
          child: Text(
            title,
            style: primaryTextStyle.copyWith(
              fontSize: 12,
              color: selectedMenu == title ? null : greyColor,
            ),
          ),
        ),
      ),
    );
  }
}
