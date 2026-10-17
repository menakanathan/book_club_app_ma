import 'package:equatable/equatable.dart';
import '../models/book.dart';

enum SortCriteria { author, title }

abstract class BookState extends Equatable {
  const BookState();

  @override
  List<Object?> get props => [];
}

class BookInitialState extends BookState {}

class BookListViewState extends BookState {
  final List<Book> books;
  final SortCriteria sortBy;

  const BookListViewState({
    required this.books,
    required this.sortBy,
  });

  @override
  List<Object?> get props => [books, sortBy];
}

class BookDetailViewState extends BookState {
  final Book selectedBook;

  const BookDetailViewState(this.selectedBook);

  @override
  List<Object?> get props => [selectedBook];
}