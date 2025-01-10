# 📚 Library Management System

## Overview
This project is a simple **Library Management System** implemented in Dart. It allows library administrators to manage books and users, and provides basic functionalities like borrowing and returning books. The project is designed for demonstration and learning purposes.

## Features
1. **Manage Books**
   - Add new books to the library.
   - Display book details, including their borrowing status.

2. **Manage Users**
   - Add new users to the library system.
   - Display user information.

3. **Borrow and Return Books**
   - Borrow a book by providing its ID and the user's ID.
   - Return a borrowed book by providing its ID.

4. **Error Handling**
   - Provides user-friendly messages for invalid operations, such as borrowing a book that is already borrowed or returning a book that was not borrowed.

## Code Structure
### Classes
- **Book**: Represents a book in the library with properties like ID, title, and borrowing status.
- **User**: Represents a library user with properties like ID and name.
- **Library**: Manages the list of books and users and provides methods for library operations.

### Key Methods
- **addBook(id, title)**: Adds a book to the library.
- **addUser(id, name)**: Adds a user to the library system.
- **borrowBook(bookId, userId)**: Marks a book as borrowed by a user.
- **returnBook(bookId)**: Marks a book as returned.
- **displayLibraryInfo()**: Displays the current state of the library.

## Example Usage
Below is an example demonstrating how to use the library system:

```dart
void main() {
  Library library = Library();

  // Add books
  library.addBook(1, 'Crime and Punishment');
  library.addBook(2, 'The Idiot');
  library.addBook(3, 'The Brothers Karamazov');

  // Add users
  library.addUser(1, 'Saadany');
  library.addUser(2, 'Shrouk');

  // Borrow books
  library.borrowBook(1, 1); // Saadany borrows Crime and Punishment
  library.borrowBook(2, 2); // Shrouk borrows The Idiot

  // Attempt to borrow already borrowed book
  library.borrowBook(2, 1); // Error

  // Return books
  library.returnBook(1); // Saadany returns Crime and Punishment
  library.returnBook(1); // Error: book already returned

  // Display library state
  library.displayLibraryInfo();
}
```

## How to Run
1. Install Dart SDK from [dart.dev](https://dart.dev/get-dart).
2. Copy the code into a `.dart` file, e.g., `library_management.dart`.
3. Open a terminal and navigate to the directory containing the file.
4. Run the program using the command:
   ```
   dart library_management.dart
   ```

## Future Enhancements
- Support for removing books and users.
- Adding a database or file storage for persistence.
- Enhancing the user interface with a frontend or command-line menu system.

## License
This project is licensed under the MIT License. Feel free to use and modify it as needed.

