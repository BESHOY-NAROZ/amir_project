import 'package:amir_project/constants/bloc/shop_cubit.dart';
import 'package:amir_project/constants/bloc/shop_states.dart';
import 'package:amir_project/design/design_authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constants/networking/shop_dio.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ShopDio.defineDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => ShopCubit(),
        child: BlocConsumer<ShopCubit, ShopStates>(
            listener: (BuildContext context, ShopStates state) {},
            builder: (BuildContext context, ShopStates state) {
              return const MaterialApp(
                debugShowCheckedModeBanner: false,
                home: DesignAuthentication(),
              );
            }));
  }
}
