import 'package:bloc_edu/repo/repo.dart';
import 'package:bloc_edu/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //ریپازیتوری پرووایدر شرایطی رو فراهم میکنه که بنویسیم
      // در اجرای اولیه داده های رو از ریپازیتوری دریافت و مقدار دهی کنیم
      //ریپازیتوری پروایدر برای یک بار داده ها را از سرور میگیرد
      home: RepositoryProvider(
        create: (BuildContext context) => Repository(),
        child: const Scaffold(
          body: HomePage(),
        ),
      ),
    );
  }
}
