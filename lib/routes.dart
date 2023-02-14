import 'package:get/get.dart';
import 'package:palmhr/features/HomeScreen/view/screen/NavButtonBar/buttonNavBar.dart';
import 'package:palmhr/features_auth/views/screens/forgot_password_screen.dart';
import 'package:palmhr/features_auth/views/screens/loginAuth_screen.dart';
import 'package:palmhr/features_auth/views/screens/setting/edit_profile_screen.dart';
import 'package:palmhr/features_auth/views/screens/setting/profile.dart';
import 'package:palmhr/features_auth/views/screens/setting/settings_screen.dart';
import 'package:palmhr/features_auth/views/screens/signup_screen.dart';

import 'features_auth/bindings/auth_binding.dart';

class AppRoutes {
  static const login = Routes.loginScreen;

  static final routes = [
    GetPage(
        name: Routes.loginScreen,
        page: () => Login_Screen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.signScreen,
        page: () => SignUpScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.forgotpasswordScreen,
        page: () => ForgotPasswordScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.profileScreen,
        page: () => ProfileScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.editProfileScreen,
        page: () => EditProfileScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.settingsScreen,
        page: () => SettingScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.bottomNavBar,
        page: () => BottomNavBar(),
        binding: AuthBinding()),
  ];
}

class Routes {
  static const loginScreen = '/loginScreen';
  static const signScreen = '/signScreen';
  static const forgotpasswordScreen = '/forgotpasswordScreen';
  static const profileScreen = '/profileScreen';
  static const editProfileScreen = '/editProfileScreen';
  static const settingsScreen = '/settingsScreen';
  static const bottomNavBar = '/bottomNavBar';
}
