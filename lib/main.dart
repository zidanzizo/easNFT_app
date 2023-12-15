import 'package:easnft_app/presentation/page/detail_page.dart';
import 'package:easnft_app/presentation/page/main_page.dart';
import 'package:easnft_app/shared/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eas NFT',
      theme: ThemeData(
        scaffoldBackgroundColor: bodyBackgroundColor,
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const MainPage(),
        '/detail': (context) => const DetailPage(),
      },
    );
  }
}
