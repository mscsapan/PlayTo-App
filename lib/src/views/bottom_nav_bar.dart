import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../logic/controller_cubit.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ControllerCubit _controller =
        BlocProvider.of<ControllerCubit>(context);
    return BlocBuilder<ControllerCubit, int>(
      builder: (context, state) {
        return SizedBox(
          height: 70.0,
          child: BottomNavigationBar(
            selectedItemColor: Colors.blueGrey,
            unselectedItemColor: Colors.grey,
            selectedFontSize: 12.0,
            unselectedFontSize: 10.0,
            elevation: 6.0,
            currentIndex: _controller.currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (int index) => _controller.changeState(index),
            items: const [
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.houseUser), label: 'Beranda'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.walking), label: 'Meet'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.leanpub), label: 'Learn'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.solidFolderOpen),
                  label: 'Beranda'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.solidSmile), label: 'Beranda'),
            ],
          ),
        );
      },
    );
  }
}
