import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/book.dart';
import 'book_state.dart';

class BookCubit extends Cubit<BookState> {
  List<Book> _books = [];

  BookCubit() : super(BookInitialState()) {
    init();
  }

  void init() {
    _books = [
      const Book(
        id: '1',
        title: 'Carmer and Grit',
        author: 'Sarah Jean Horwitz',
        description:
            'Lorem ipsum dolor sit amet consectetur. Id tincidunt tristique vitae at pharetra. Commodo volutpat lacus adipiscing at elit semper eget turpis ut. Gravida faucibus faucibus ornare consectetur enim cursus tellus.',
        imageUrl: 'assets/images/Carmer_Grit.png',
      ),
      const Book(
        id: '2',
        title: 'The Imperfections of Memory',
        author: 'Angelina Aludo',
        description:
            'In purgatory, he has to piece together his jumbled memories. A journey through fragmented recollections and unspoken truths.',
        imageUrl:
            'assets/images/memory.png',
      ),
      const Book(
        id: '3',
        title: 'James and the Giant Peach',
        author: 'Roald Dahl',
        description:
            'A magical journey of a young boy who escapes his cruel aunts inside an enormous, magical peach with a crew of talking garden bugs.',
        imageUrl:
            'assets/images/GiantPeach.png',
      ),
      const Book(
        id: '4',
        title: 'Little Gods',
        author: 'Meng Jin',
        description:
            'A brilliant physicist disappears on the night of the Tiananmen Square massacre, leaving behind a secret history that her daughter unravels.',
        imageUrl:
            'assets/images/littleGods.png',
      ),
    ];

    sortByCriteria(SortCriteria.author);
  }

  void sortByCriteria(SortCriteria criteria) {
    final sortedList = List<Book>.from(_books);

    if (criteria == SortCriteria.author) {
      sortedList.sort(
        (a, b) => a.author.toLowerCase().compareTo(b.author.toLowerCase()),
      );
    } else {
      sortedList.sort(
        (a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()),
      );
    }

    emit(BookListViewState(books: sortedList, sortBy: criteria));
  }

  void selectBook(Book book) {
    emit(BookDetailViewState(book));
  }

  void returnToBookList() {
    sortByCriteria(SortCriteria.author);
  }
}