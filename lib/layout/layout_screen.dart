import 'package:adealy/shared/cubit/cubit.dart';
import 'package:adealy/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            title: const Text("الشاشه الرئيسية"),
          ),
          body: cubit.screens[cubit.currentScreenIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedIconTheme: IconThemeData(color: Colors.blue),
            selectedItemColor: Colors.blue,
            unselectedIconTheme: IconThemeData(color: Colors.grey),
            unselectedItemColor: Colors.grey,
            items: cubit.bottomItems,
            showUnselectedLabels: true,
            currentIndex: cubit.currentScreenIndex,
            onTap: (index) {
              cubit.changeScreenIndex(index);
            },
          ),
        );
      },
    );
  }
}
