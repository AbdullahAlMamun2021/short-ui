import 'package:flutter/material.dart';
import 'package:food_commerce/src/presentation/screens/screen_attendance.dart';
import 'package:food_commerce/src/presentation/screens/screen_blog.dart';
import 'package:food_commerce/src/presentation/screens/screen_chating.dart';
import 'package:food_commerce/src/presentation/screens/screen_dashboard.dart';
import 'package:food_commerce/src/presentation/screens/screen_home.dart';
import 'package:food_commerce/src/presentation/screens/screen_leave.dart';
import 'package:food_commerce/src/presentation/screens/screen_meal.dart';
import 'package:food_commerce/src/presentation/screens/screen_logout.dart';
import 'package:food_commerce/src/presentation/screens/screen_notice.dart';
import 'package:food_commerce/src/presentation/screens/screen_projects.dart';
import 'package:food_commerce/src/presentation/screens/screen_register.dart';
import 'package:food_commerce/src/presentation/screens/screen_schedule.dart';
import 'package:food_commerce/src/presentation/screens/screen_signin.dart';
import 'package:food_commerce/src/presentation/screens/screen_todo.dart';

class AppRouter {
  static const String home = "/home";
  static const String signIn = "/home/sign-in";
  static const String registration = "/home/registration";
  static const String dashboard = "/home/sign-In/dashboard";
  static const String attendance = "/home/sign-In/attendance";
  static const String leave = "/home/sign-In/leave";
  static const String project = "/home/sign-In//project";
  static const String meal = "/home/sign-In/meal";
  static const String chatting = "/home/sign-In//chatting";
  static const String blog = "/home/sign-In//blog";
  static const String notice = "/home/sign-In/notice";
  static const String todo = "/home/sign-In/todo";
  static const String schedule = "/home/sign-In/schedule";
  static const String logout = "/home/sign-In/HomeScreen";

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case signIn:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case registration:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case dashboard:
        return MaterialPageRoute(builder: (_) => DashboardScreen());
      case attendance:
        return MaterialPageRoute(builder: (_) => const AttendanceScreen());
      case leave:
        return MaterialPageRoute(builder: (_) => const LeaveScreen());
      case project:
        return MaterialPageRoute(builder: (_) => const ProjectScreen());
      case meal:
        return MaterialPageRoute(builder: (_) => const MealScreen());
      case chatting:
        return MaterialPageRoute(builder: (_) => const ChattingScreen());
      case blog:
        return MaterialPageRoute(builder: (_) => const BlogScreen());
      case notice:
        return MaterialPageRoute(builder: (_) => const NoticeScreen());
      case todo:
        return MaterialPageRoute(builder: (_) => const TodoScreen());
      case schedule:
        return MaterialPageRoute(builder: (_) => const ScheduleScreen());
      case logout:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
