import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part '../section/header_section.dart';
part '../section/category_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: ListView(
          children: const [
            HeaderSection(),
            SizedBox(height: 20),
            CategorySection()
          ],
        ),
      ),
    );
  }
}


