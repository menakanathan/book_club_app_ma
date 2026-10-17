import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/books/cubit/book_cubit.dart';
import 'features/books/views/home_page.dart';

void main() {
  runApp(const BookClubApp());
}

class BookClubApp extends StatelessWidget {
  const BookClubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Club',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE5E0EB)),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => BookCubit(),
        child: const HomePage(),
      ),
    );
  }
}