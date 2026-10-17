# book_club_app_ma

A Flutter application built using **Cubit (flutter_bloc)** for state management and **Equatable**. The app showcases a book catalog with interactive sorting, transitions between list and detail views, and a clean, responsive layout based on Figma designs.

---

## Features

- **State-Driven Navigation:** Smooth transitions between the main book list and the book detail view entirely orchestrated by `BookCubit` (no manual route pushes).
- **Dynamic Sorting:** Toggle between sorting by **Author** (default) and **Title** with active/inactive UI pill indicators.
- **Reusable Component Architecture:**
  - `BookCoverImage`: Standalone, reusable cover image widget supporting both local assets and remote network URLs with fallback error placeholders.
  - `BookFullCard`: Composite view displaying the book cover, title, author, and description.
- **Custom AppBar Integration:** The detail page's custom leading button connects directly to the Cubit to trigger state updates back to the list screen.

---
## Installation
1. Clone the repository
   git clone ## https link
   cd book_club_app
2. Install dependencies
   flutter pub get
4. Verify Asset Configuration:
## Ensure your local book cover images are inside assets/images/ and declared in your pubspec.yaml:

YAML
flutter:
  uses-material-design: true
  assets:
    - assets/images/
4. Launch your Pixel emulator
  flutter emulators --launch Pixel_10a
5. Run the application
  flutter run

---

