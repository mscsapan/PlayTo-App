import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/controller_cubit.dart';
import '../views/bottom_nav_bar.dart';
import 'nav_screens/book_mark_screen.dart';
import 'nav_screens/home_screen.dart';
import 'nav_screens/learn_screen.dart';
import 'nav_screens/meet_screen.dart';
import 'nav_screens/profile_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final List<Widget> screens = const [
    HomeScreen(),
    MeetScreen(),
    LearnScreen(),
    //CategoryScreen(),
    //FootBallEventScreen(),
    BookMarkScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final ControllerCubit _controller =
        BlocProvider.of<ControllerCubit>(context);
    return BlocBuilder<ControllerCubit, int>(
      builder: (context, state) {
        return Scaffold(
          body: screens[_controller.currentIndex],
          bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}
