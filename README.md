# Flutter Project Structure 🚀

Welcome to my Flutter project! This structure is designed to optimize modularity, maintainability, and scalability, ensuring a smooth development process and clear separation of concerns. Below is an overview of the main components of the project.

## 📂 Project Structure

```bash
lib/
│
├── core/
│   └── constants/           # Global constants (e.g., API keys, routes, etc.)
│
├── di/                      # Dependency Injection setup
│   └── di.dart
│
├── https/                   # Network requests & API integration
│   └── api_request.dart      # HTTP requests and API handling
│
├── models/                  # Data models for the app
│   └── user_model.dart
│
├── routes/                  # Application routing and navigation
│   └── app_routes.dart
│
├── themes/                  # App themes (colors, typography, etc.)
│   └── app_theme.dart
│
├── utils/                   # Utility functions and helpers
│   └── logger.dart          # Logger or common helper functions
│
├── widgets/                 # Reusable UI components
│   └── custom_button.dart
│
└── module/
    ├── screens/             # App's individual screens
    │   └── home_screen.dart
    │
    ├── widgets/             # Screen-specific widgets
    │   └── home_card.dart
    │
    ├── providers/           # State management (e.g., Provider, Riverpod)
    │   └── user_provider.dart
    │
    └── forms/               # Input forms and validation
        └── login_form.dart

```


## 🛠️ Key Components

- **Core (constants)**: Contains globally accessible constants used throughout the app, such as API keys, route names, and default settings.
  
- **Dependency Injection (di)**: Centralized DI management for improving scalability and making it easy to manage dependencies like services, repositories, and more.

- **Networking (https)**: Manages all network requests and API interactions, keeping the code organized and easy to maintain. 

- **Models**: Houses data models that represent the structure of data used in the app.

- **Routes**: Manages application routes, making navigation between screens smooth and maintainable.

- **Themes**: Defines the application’s overall look and feel, including color schemes and typography.

- **Utils**: A collection of utility functions and helpers used across different parts of the app, improving reusability.

- **Widgets**: Reusable UI components that can be integrated across multiple screens, reducing code duplication.

- **Module**: This is where the magic happens! Each module contains specific screens, widgets, providers (for state management), and forms. 
  - **Screens**: Contains different screens for the app.
  - **Widgets**: Widgets unique to a particular screen or context.
  - **Providers**: Manages the state of the app (using tools like Provider, Riverpod, etc.).
  - **Forms**: Contains form widgets and validation logic for input forms like login or registration.

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/osama300/flutter-module-structureApp.git
   ```
2.Install dependencies:
    ```bash
     flutter pub get
    ```
    
3.Run the app:
    ```bash
     flutter run
    ```
   



