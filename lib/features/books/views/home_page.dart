import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/book_cubit.dart';
import '../cubit/book_state.dart';
import 'book_detail_view.dart';
import 'book_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookCubit, BookState>(
      builder: (context, state) {
        if (state is BookDetailViewState) {
          return BookDetailView(book: state.selectedBook);
        }

        if (state is BookListViewState) {
          return BookListView(
            books: state.books,
            currentSort: state.sortBy,
          );
        }

        return const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}