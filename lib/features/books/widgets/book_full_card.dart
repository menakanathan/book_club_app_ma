import 'package:flutter/material.dart';
import '../models/book.dart';
import 'book_cover_image.dart';

class BookFullCard extends StatelessWidget {
  final Book book;

  const BookFullCard({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BookCoverImage(
            imageUrl: book.imageUrl,
            width: 170,
            height: 260,
          ),
          const SizedBox(height: 20),
          Text(
            book.title,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4A4A4A),
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            book.author,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Color(0xFF757575),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            book.description,
            style: const TextStyle(
              fontSize: 14.5,
              height: 1.45,
              color: Color(0xFF616161),
            ),
          ),
        ],
      ),
    );
  }
}