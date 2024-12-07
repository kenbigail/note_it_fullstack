import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part '../section/header_section.dart';
part '../section/category_section.dart';
part '../section/card_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: ListView(
          children: [
            const HeaderSection(),
            const SizedBox(height: 20),
            const CategorySection(),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Recently Added',
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 25.0,
                  mainAxisSpacing: 15.0,
                  childAspectRatio: 1.0,
                ),
                itemCount: 3,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const CardWidget(
                      fillColor: Color(0xFFFAF3DE),
                      title: "Kate's Orders",
                      subtitle: "Works",
                    );
                  } else if (index == 1) {
                    return const CardWidget(
                      fillColor: Color(0xFF1070E1),
                      title: "Ken's Data Resource",
                      subtitle: "Uncategorized",
                      titleColor: Colors.black,
                      subtitleColor: Colors.black,
                    );
                  } else {
                    return const DashedCardWidget();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


