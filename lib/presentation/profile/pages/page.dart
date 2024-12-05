import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_it/core/constants/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.white,
            child: Center(
              child: Text(
                'Profile',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
          ),
          const SizedBox(height: 45),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0xFF111111), // Hex color #111111
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            alignment: Alignment.center,
            child: Text(
              'K',
              style: GoogleFonts.inter(
                fontSize: 35,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Keenan Abigail',
                style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Text(
                'keenanabigailidn@gmail.com',
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )
            ],
          ),
          const SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15), // Add padding on the left
                  child: Align(
                    alignment: Alignment.centerLeft, // Align the text to the left and center vertically
                    child: Text(
                      'Account',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColor.secondaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15), // Add padding on the left
                  child: Align(
                    alignment: Alignment.centerLeft, // Align the text to the left and center vertically
                    child: Text(
                      'Edit Profile',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColor.secondaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15), // Add padding on the left
                  child: Align(
                    alignment: Alignment.centerLeft, // Align the text to the left and center vertically
                    child: Text(
                      'Help',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
