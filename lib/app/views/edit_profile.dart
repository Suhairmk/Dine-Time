import 'package:dinetime/app/constant/app_theme.dart';
import 'package:dinetime/app/constant/colors.dart';
import 'package:dinetime/app/views/customeWidgets/text_field.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.lightPrimary,
        title: const Text('Edit profile'),
        titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 45,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 40),
            const CustomTextField(
              hintText: 'Name',
              icon: Icons.person_outline,
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              hintText: 'something@gmail.com',
              icon: Icons.email_outlined,
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Save profile changes
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:  AppColors.lightPrimary,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Save', style: TextStyle(fontSize: 16,)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
