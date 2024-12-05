part of '../pages/page.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            decoration: BoxDecoration(
              color: const Color(0xFF111111),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'Recently Added',
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w500, // Medium
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            decoration: BoxDecoration(
              color: const Color(0xFFF0F0F0), // #F0F0F0
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'Works',
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w500, // Medium
                color: const Color(0xFF111111), // #111111
              ),
            ),
          ),
          const SizedBox(width: 10),
          DottedBorder(
            color: const Color(0xFFD9D9D9), // Dashed stroke color
            strokeWidth: 1,
            dashPattern: const [4, 3], // Dash length and gap length
            borderType: BorderType.RRect, // Rounded rectangle border
            radius: const Radius.circular(8), // 8px corner radius
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              child: Text(
                '+ Add More',
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w500, // Medium
                  color: const Color(0xFF111111), // Text color
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}