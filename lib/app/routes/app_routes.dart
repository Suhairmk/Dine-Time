import 'package:dinetime/app/views/auth_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static const home = '/auth';


  static final routes = [
    GetPage(name: home, page: () => AuthScreen()),
   
  ];
}