import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app/consts/color.dart';
import 'package:sushi_app/provider/food_provider.dart';
import 'package:sushi_app/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FoodProvider(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Sushi App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: darkred),
          useMaterial3: true,
        ),
        routeInformationProvider: MyRouter.router.routeInformationProvider,
        routeInformationParser: MyRouter.router.routeInformationParser,
        routerDelegate: MyRouter.router.routerDelegate,
      ),
    );
  }
}
