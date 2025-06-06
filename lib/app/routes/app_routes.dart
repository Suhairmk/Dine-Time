import 'package:dinetime/app/views/auth_screen.dart';
import 'package:dinetime/app/views/edit_profile.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static const home = '/auth';
   static const editProfile = '/editProfile';


  static final routes = [
    GetPage(name: home, page: () => AuthScreen()),
    GetPage(name: editProfile, page: () => EditProfileScreen()),
    
   
  ];
}