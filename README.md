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
