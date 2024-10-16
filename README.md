# Flutter Quiz App

A **Flutter Quiz App** that allows users to take quizzes on various topics. The app includes features such as multiple-choice questions, a scoring system, and customizable UI components. The app is built with state management, clean architecture, and responsive design in mind.

## Features

- **Multiple-choice quizzes**: Answer questions with multiple options.
- **Score tracking**: See your score after completing the quiz.
- **State management**: Efficient state handling using [Provider/Bloc/Riverpod] (based on your choice).
- **Customizable UI**: Theme and font customization for a personalized experience.
- **Responsive design**: Works smoothly on all screen sizes.

## Getting Started

### Prerequisites

- **Flutter SDK**: Install the latest version of Flutter from [here](https://flutter.dev/docs/get-started/install).
- **Dart SDK**: Comes with Flutter, ensure it’s up to date.
- **Android Studio or VSCode**: Preferred IDE for Flutter development.

## Folder Structure

```perl
lib/
│
├── models/              # Data models (e.g., Question)
├── screens/             # UI screens (Home, Quiz, Result)
├── widgets/             # Reusable widgets (Buttons, QuizCard)
├── state/               # State management (Providers, State classes)
└── utils/               # Utility functions and constants
```

## Key Dependencies
- flutter_bloc: For state management.
- google_fonts: For custom fonts.
- provider: For lightweight state management.
- shared_preferences: To store quiz results locally.

## Usage
Home Screen: Choose a quiz topic and start the quiz.
Quiz Screen: Answer the multiple-choice questions.
Result Screen: View your total score and retake the quiz if needed.

# Customization
You can easily add more quiz questions by updating the questions list in the questions.dart file.
The app uses Google Fonts for custom fonts, you can switch to other fonts via the google_fonts package.
Modify the color themes by editing the theme.dart file.

# Contributing
Contributions are welcome! If you'd like to contribute, follow these steps:

- Fork the repository.
- Create a new branch for your feature (git checkout -b feature-branch).
- Commit your changes (git commit -m 'Add some feature').
- Push to the branch (git push origin feature-branch).
- Create a Pull Request.


