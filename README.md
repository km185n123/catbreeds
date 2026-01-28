# CatBreeds

A modern Flutter application for exploring and discovering cat breeds, built with Clean Architecture and best practices.

## 🏗 Architecture

This project follows **Clean Architecture** principles to ensure separation of concerns, scalability, and testability. It is structured using a **Feature-First** approach.

### Layers
- **Presentation**: UI (Widgets), State Management (BLoC).
- **Domain**: Business Logic (UseCases), Entities, Repository Interfaces. purely Dart, no Flutter dependencies (except `equatable`).
- **Data**: Repository Implementations, Data Sources (API), Models (DTOs), Mappers.

### Folder Structure
```
lib/
├── core/                   # Shared kernel (Config, DI, Network, Routes, Theme, Widgets)
└── features/
    ├── landing/            # Feature: Search and List breeds
    │   ├── data/
    │   ├── domain/
    │   └── presentation/
    ├── detailbreed/        # Feature: Breed Details
    └── splash/             # Feature: Splash Screen
```

## 🛠 Tech Stack & Libraries

- **State Management**: [flutter_bloc](https://pub.dev/packages/flutter_bloc) - Predictable state management.
- **Navigation**: [go_router](https://pub.dev/packages/go_router) - Declarative routing.
- **Networking**: [dio](https://pub.dev/packages/dio) - Powerful HTTP client.
- **Dependency Injection**: [get_it](https://pub.dev/packages/get_it) - Service locator.
- **Functional Programming**: [fpdart](https://pub.dev/packages/fpdart) - Error handling with `Either`.
- **Code Generation**: [freezed](https://pub.dev/packages/freezed) & [json_serializable](https://pub.dev/packages/json_serializable) - Immutable data classes and JSON serialization.
- **Testing**: [mocktail](https://pub.dev/packages/mocktail) & [flutter_test](https://api.flutter.dev/flutter/flutter_test/flutter_test-library.html).

## ✨ Features

### 🚀 Flavors & Configuration
The app is configured with multiple environments (flavors) to support different stages of development:
- **Dev**: Development environment.
- **Staging**: Testing environment.
- **Prod**: Production environment.

### 🌐 Internationalization (I18n)
Full support for multiple languages using `flutter_localizations` and ARB files.
- **Supported Locales**: English (`en`), Spanish (`es`).
- Automatically detects device language.

### 🎨 UI & UX
- **Atomic Components**: Reusable widgets located in `core/widgets` (Buttons, Cards, Chips, Headers).
- **Design**: Modern, minimalist aesthetic with support for **Light** and **Dark** themes.
- **Responsive**: Adapts to different screen sizes.

### 🛡 Robust Error Handling
- **User-Friendly Feedback**: Custom widgets to display standard error messages vs connectivity issues.
- **Retry Mechanism**: Users can retry failed requests (e.g., after restoring internet connection).
- **Offline Awareness**: Specific handling for connection timeouts and network errors.

## 🧪 Testing

The **Business Logic (Domain)** and **Data** layers are covered with unit tests to ensure reliability.

### Running Tests
```bash
flutter test
```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (latest stable)
- Java 11/17 (for Android build)

### Installation
1.  Clone the repository:
    ```bash
    git clone https://github.com/your-username/catbreeds.git
    ```
2.  Install dependencies:
    ```bash
    flutter pub get
    ```
3.  Run code generation (if needed):
    ```bash
    dart run build_runner build -d
    ```

### Running the App
Run with a specific flavor:

**Development**
```bash
flutter run --flavor dev -t lib/main.dart
```

**Production**
```bash
flutter run --flavor prod -t lib/main_prod.dart
```
