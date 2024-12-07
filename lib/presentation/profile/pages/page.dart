import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_it/core/constants/colors.dart';
import 'package:note_it/main.dart';
import 'package:note_it/presentation/profile/blocs/logout_bloc.dart';

part '../section/header_profile.dart';
part '../section/content_profile.dart';

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
          HeaderProfile(),
          const SizedBox(height: 30),
          ContentProfile()
        ],
      ),
    ));
  }
}


