class Book {
  late int id;
  late String title;
  bool borrowed = false;

  Book({required this.id, required this.title});

  void displayInfo() {
    print('Book ID: $id, Title: $title, Borrowed: $borrowed');
  }
}

class User {
  late int id;
  late String name;

  User({required this.id, required this.name});

  void displayInfo() {
    print('User ID: $id, Name: $name');
  }
}

class Library {
  List<Book> books = [];
  List<User> users = [];

  // Add a book directly using id and title
  void addBook(int id, String title) {
    var book = Book(id: id, title: title);
    books.add(book);
    print('Book "${book.title}" added to the library.');
  }

  // Add a user directly using id and name
  void addUser(int id, String name) {
    var user = User(id: id, name: name);
    users.add(user);
    print('User "${user.name}" added to the library system.');
  }

  void borrowBook(int bookId, int userId) {
    Book book = books.firstWhere((b) => b.id == bookId,
        orElse: () => Book(
            id: -1, title: '')); // return an empty book object if not found
    if (book.id == -1) {
      print('Book with ID $bookId not found.');
      return;
    }

    if (book.borrowed) {
      print('Book "${book.title}" is already borrowed.');
      return;
    }

    book.borrowed = true;
    print('Book "${book.title}" borrowed by user ID $userId.');
  }

  void returnBook(int bookId) {
    Book book = books.firstWhere((b) => b.id == bookId,
        orElse: () => Book(
            id: -1, title: '')); // return an empty book object if not found
    if (book.id == -1) {
      print('Book with ID $bookId not found.');
      return;
    }

    if (!book.borrowed) {
      print('Book "${book.title}" is not currently borrowed.');
      return;
    }

    book.borrowed = false;
    print('Book "${book.title}" has been returned.');
  }

  void displayLibraryInfo() {
    print('\n--- Library Books ---');
    for (var book in books) {
      print('ID: ${book.id}, Title: ${book.title}, Borrowed: ${book.borrowed}');
    }

    print('\n--- Library Users ---');
    for (var user in users) {
      print('ID: ${user.id}, Name: ${user.name}');
    }
  }
}

void main() {
  Library library = Library();

  // Add books using direct method calls with id and title
  library.addBook(1, 'Crime and Punishment');
  library.addBook(2, 'The Idiot');
  library.addBook(3, 'The Brothers Karamazov');

  // Add users using direct method calls with id and name
  library.addUser(1, 'Saadany');
  library.addUser(2, 'Shrouk');

  // Perform operations
  library.borrowBook(1, 1); // Saadany borrows Crime and Punishment
  library.borrowBook(2, 2); // Shrouk borrows The Idiot
  
  library.borrowBook(2, 1); // gives error 
  
  library.returnBook(1); // Saadany returns Crime and Punishment
  library.returnBook(1); //gives error 
  library.returnBook(12); //gives error 
  

  // Display final state of the library
  library.displayLibraryInfo();
}
