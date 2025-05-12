# 📚 Library Management System

Welcome to the **Library Management System**, a robust and user-friendly application designed to streamline library operations for librarians, students, and administrators. Built with modern technologies, this system automates tasks such as book cataloging, user management, and borrowing/returning books, making library management efficient and hassle-free.

\
*Manage your library with ease and efficiency!*

## 🚀 Features

- **Book Management**

  - Add, update, and remove books from the library catalog.
  - Store details like title, author, ISBN, genre, and publication year.
  - Search books by title, author, or ISBN.

- **User Management**

  - Register and manage user accounts (students, librarians, admins).
  - Update user details and membership status.
  - Role-based access control for different user types.

- **Borrowing & Returning**

  - Track book loans with due dates and overdue notifications.
  - Issue and return books seamlessly.
  - Calculate and manage late fines.

- **Admin Dashboard**

  - Intuitive interface for librarians to manage books, users, and transactions.
  - Generate reports for issued books, overdue loans, and fines.

- **Security Features**

  - Password encryption for secure user authentication.
  - CAPTCHA verification to prevent unauthorized access.

- **Responsive Design**

  - Accessible on desktops, tablets, and mobile devices.
  - Clean and modern UI for an enhanced user experience.

## 🛠️ Technologies Used

- **Frontend**: HTML, CSS, JavaScript, Bootstrap
- **Backend**: PHP
- **Database**: MySQL
- **Server**: XAMPP/WAMP
- **Tools**: Git, Visual Studio Code

## 📦 Installation

Follow these steps to set up the Library Management System on your local machine:

### Prerequisites

- XAMPP or WAMP installed (Download XAMPP).
- Git installed for cloning the repository.
- A modern web browser (Chrome, Firefox, etc.).

### Steps

1. **Clone the Repository**

   ```bash
   git clone https://github.com/pratikverse/Library-Management-System.git
   ```

2. **Move to Project Directory**

   ```bash
   cd Library-Management-System
   ```

3. **Set Up the Database**

   - Open XAMPP/WAMP and start the Apache and MySQL servers.
   - Open phpMyAdmin (`http://localhost/phpmyadmin`).
   - Create a new database named `library`.
   - Import the `library.sql` file from the `db` folder in the repository.

4. **Configure the Project**

   - Copy the project folder to the `htdocs` directory of XAMPP (`C:\xampp\htdocs`).

   - Update the database configuration in `config.php` (if applicable) with your MySQL credentials:

     ```php
     $host = "localhost";
     $user = "root";
     $password = "";
     $database = "library";
     ```

5. **Run the Application**

   - Open your browser and navigate to `http://localhost/Library-Management-System`.
   - Log in with default credentials (if provided) or register a new user.

## 📖 Usage

- **Librarian**: Log in to the admin panel to manage books, users, and loans. Use the dashboard to generate reports and track library activities.
- **Student/User**: Sign up or log in to browse the book catalog, borrow books, and view your borrowing history.
- **Admin**: Manage user roles, system settings, and ensure smooth operation of the system.

## 📬 Contact

For questions, suggestions, or feedback, reach out to:

- **Author**: Pratik
- **GitHub**: pratikverse
- **Email**: kpratik653@gmail.com

---