# Aesthetic Flow Shop

A modern, fully-functional Flutter shopping application built as a comprehensive learning project. This app guides users from an aesthetic welcome screen through authentication and into a dynamic product browsing experience.

![Aesthetic Flow Shop Demo](Screen Recording 2025-09-28 210433.gif) 

---

## Project Overview

This project is a complete **shopping application** developed with **Dart** and **Flutter**. It was built incrementally, starting from core Dart programming concepts and advancing to professional mobile app development practices.

The app simulates a real-world e-commerce interface, featuring user authentication, an interactive product catalog, a shopping cart, and a responsive UI. The final project follows best practices with a clean code structure and is published on GitHub.

---

## Features

### 1. Aesthetic Welcome Screen
- **AppBar** with a custom title.
- A row containing one **local image** and one **online image**.
- Custom typography using the **Suwannaphum** font with custom sizes, bold, and colors.
- Centered layout with adequate spacing.
- **Sign-up** and **Sign-in** buttons that navigate to the respective forms.

### 2. User Authentication
- **Sign-Up Form** with validation for:
  - Full Name (must start with an uppercase letter)
  - Email (must contain "@")
  - Password (at least 6 characters)
  - Confirm Password (must match the password)
- **Sign-In Form** with validation for email and password.
- Success dialogs upon valid form submission.
- Navigation to the main shopping screen after authentication.

### 3. Smooth Animated Transition
- A seamless **fade-out** animation from the auth screens.
- A smooth **fade-in** animation to the main shopping screen.

### 4. Interactive Shopping Home Screen
- **AppBar** titled "Our Products".
- Horizontal **PageView** for featured product images.
- Responsive **GridView** (2 cards per row) displaying product cards with:
  - Product image
  - Product title
  - "Add to Cart" icon that triggers a SnackBar confirmation.
- "Hot Offers" section built with a **ListView.builder**, displaying 5 scrollable offers with images and descriptions.

---

## Setup Instructions

### Prerequisites
- **Flutter SDK** (ensure it's installed and your `flutter doctor` shows no issues)
- An IDE like **VS Code** or **Android Studio** with the Flutter/Dart plugin.
- **Git** for version control.

### Installation & Run
1.  **Clone the repository**
    ```bash
    git clone https://github.com/JanaAhmedHussien/Shopping_App_Flutter.git
    cd your-repo-name
    ```

2.  **Get dependencies**
    ```bash
    flutter pub get
    ```

3.  **Run the app**
    ```bash
    flutter run
    ```
    *Ensure you have an emulator running or a physical device connected.*
