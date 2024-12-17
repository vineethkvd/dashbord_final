import 'package:dashbord_final/provider/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_router.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DrawerProvider(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Dashboard App',
        theme: ThemeData.dark(),
        routerConfig: appRouter,
      ),
    );
  }
}
