import 'package:flutter/material.dart';
import 'package:model_view_viewmodel/utils/routes/routes.dart';
import 'package:model_view_viewmodel/utils/routes/routes_name.dart';
import 'package:model_view_viewmodel/view_d/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RoutesName.login,
      onGenerateRoute: Routes.generatRoute,
    );
  }
}
