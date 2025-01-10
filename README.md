# 📚 Library Management System 📚
Welcome to the **Library Management System** built with Dart! This simple application helps manage books, users, and book borrowing/returning operations in a library setting. 🚀

## 🌟 Features
- 📖 Add new books and users to the system.
- 📥 Borrow and 📤 Return books.
- 🏛 Display current library status with the list of books and users.
- ⚠️ Handle errors such as trying to borrow a book that's already borrowed or trying to return a book that is not borrowed.

---

## 📝 Classes

### 📖 `Book`
Represents a book in the library with the following properties and methods:
- **Properties**:
  - `id` (int): Unique identifier for the book.
  - `title` (String): Title of the book.
  - `borrowed` (bool): Tracks whether the book is borrowed or not.
- **Methods**:
  - `displayInfo()`: Prints the book's information including `id`, `title`, and `borrowed` status.

#### Example:
```dart
Book book = Book(id: 1, title: 'Crime and Punishment');
book.displayInfo();


👤 User

Represents a user of the library with the following properties and methods:

    Properties:
        id (int): Unique identifier for the user.
        name (String): Name of the user.
    Methods:
        displayInfo(): Prints the user's information including id and name.

Example:

User user = User(id: 1, name: 'Saadany');
user.displayInfo();

🏛 Library

Represents the library system that contains a list of books and users. Provides the following methods:

    Methods:
        addBook(int id, String title): Adds a new book to the library.
        addUser(int id, String name): Adds a new user to the library system.
        borrowBook(int bookId, int userId): Allows a user to borrow a book if it is available.
        returnBook(int bookId): Allows a user to return a borrowed book.
        displayLibraryInfo(): Displays all the books and users currently in the system.

Example:

Library library = Library();
library.addBook(1, 'Crime and Punishment');
library.addUser(1, 'Saadany');
library.borrowBook(1, 1);  // Saadany borrows Crime and Punishment
library.displayLibraryInfo();

⚠️ Error Handling

The system handles several types of errors:

    Trying to borrow a book that's already borrowed:

library.borrowBook(2, 1);  // Error: Book "The Idiot" is already borrowed

    Trying to return a book that was not borrowed:

library.returnBook(1);  // Error: Book "Crime and Punishment" is not currently borrowed

    Trying to borrow or return a book that doesn't exist:

library.returnBook(12);  // Error: Book with ID 12 not found.

📊 Example Output

Book "Crime and Punishment" added to the library.
Book "The Idiot" added to the library.
Book "The Brothers Karamazov" added to the library.
User "Saadany" added to the library system.
User "Shrouk" added to the library system.
Book "Crime and Punishment" borrowed by user ID 1.
Book "The Idiot" borrowed by user ID 2.
Book "The Idiot" is already borrowed.
Book "Crime and Punishment" has been returned.
Book "Crime and Punishment" is not currently borrowed.
Book with ID 12 not found.

--- 
Library Books ---
ID: 1, Title: Crime and Punishment, Borrowed: false
ID: 2, Title: The Idiot, Borrowed: true
ID: 3, Title: The Brothers Karamazov, Borrowed: false

--- 
Library Users ---
ID: 1, Name: Saadany
ID: 2, Name: Shrouk

🚀 How to Run

    Clone the repository:

git clone <repository_url>

    Run the Dart application:

dart run main.dart
