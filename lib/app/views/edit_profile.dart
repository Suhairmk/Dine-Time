import 'package:dinetime/app/constant/app_theme.dart';
import 'package:dinetime/app/constant/colors.dart';
import 'package:dinetime/app/views/customeWidgets/text_field.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
   EditProfileScreen({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final formkey=GlobalKey<FormState>();

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
        child: Form(
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
               CustomTextField(
                validator: (val){
                  if (val == null || val.isEmpty) {
                    return 'Please enter your name';
                  } else if (val.length < 3) {
                    return 'Name must be at least 3 characters long';
                  }
                  return null;
                },
                controller:nameController ,
                label: 'Name',
                prifixicon: Icons.person_outline,
              ),
              const SizedBox(height: 20),
               CustomTextField(
                validator: (val){
                  if (val == null || val.isEmpty) {
                    return 'Please enter your email';
                  } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(val)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                label: 'Email',
              controller: emailController,
                prifixicon: Icons.email_outlined,
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      // Form is valid, proceed with saving changes
                    }
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
      ),
    );
  }
}
