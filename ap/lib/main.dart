import 'package:ap/cubit/count_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CountCubit(),
        child: GetMaterialApp(
            home: SafeArea(
          child: Scaffold(
              body: Column(
            children: [
              BlocConsumer<CountCubit, CountState>(
                listener: (context, state) {
                  if (state == increatmtState(count: 1)) {
                    print('yea');
                  }
                },
                builder: (context, state) {
                  return Container(
                      child: Text(
                    '${BlocProvider.of<CountCubit>(context).count}',
                    style: TextStyle(fontSize: 40),
                  ));
                },
              ),
              BlocBuilder<CountCubit, CountState>(
                builder: (context, state) {
                  return ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<CountCubit>(context).increamtFunCtion();
                      },
                      child: Text('add'));
                },
              )
            ],
          )),
        )));
  }
}
