# coopah_dev_frontend

A Flutter weather application built with Clean Architecture principles.

## Overview

This project is a fully functional weather application developed using Flutter. It adheres to the principles of Clean Architecture to ensure separation of concerns, testability, and maintainability. 
## Key Features

- Fetches and displays current weather data based on location coordinates.
- Implements Clean Architecture for a well-structured codebase.
- Uses `flutter_bloc` for robust state management in the presentation layer.
- Employs `dartz` for functional error handling and optional types in the core layer.
- `freezed` is used for generating immutable data classes.
- Uses `dio` for efficient and type-safe network requests in the data layer.
- Integrates `get_it` and `injectable` for dependency injection, promoting decoupling.
- Includes comprehensive unit tests using `flutter_test`, `bloc_test`, and `mockito` packages.

## Project Structure

The application is organized into the following layers, as dictated by Clean Architecture:

1.  **Presentation Layer (`presentation`)**:
    -   Responsible for the user interface (UI) and handling user interactions.
    -   Uses `flutter_bloc` for managing the UI state and reacting to events.

2.  **Core Layer (`core`)**:
    -   Contains the core logics and entities of the application.
    -   Uses `dartz` for handling potential errors and absent values in a functional way (e.g., using `Either` for success/failure and `Option` for nullable values).
    -   Defines core data structures like `TemperatureUnit` enum.

3.  **Data Layer (`data`)**:
    -   Responsible for data retrieval from various sources (e.g., network, local storage).
    -   Contains:
        -   `models`: Defines data transfer objects (DTOs) like `WeatherResponse`, `WeatherModel`, `City`, `MainWeather`, and `WeatherDetail`, often made immutable using `freezed`. Also includes `AppError` for handling application-specific errors.
        -   `repositories`: Defines abstract repository interfaces (e.g., `IWeatherRepository`) that the presentation layer interacts with. Also includes concrete implementations (e.g., `WeatherRepository`) that depend on data sources.
        -   `services`: Contains services that handle the actual data fetching, such as `WeatherService` which uses `dio` to make API calls.

## Dependencies

The project relies on the following key Flutter packages:

-   **`bloc` and `flutter_bloc`**: For implementing the Business Logic Component (BLoC) pattern for state management.
-   **`dartz`**: For functional programming paradigms, especially for handling results (success or failure).
-   **`freezed`**: For automatically generating immutable data classes, `copyWith` methods, `toString` methods, and more, reducing boilerplate code.
-   **`injectable` and `get_it`**: For dependency injection, making the codebase more modular and testable.
-   **`dio`**: A powerful HTTP client for making network requests.
-   **`mockito`**: For creating mocks and stubs in unit and integration tests.
-   **`flutter_test`**: Flutter's built-in framework for writing unit, widget, and integration tests.
-   **`bloc_test`**: A utility package for testing Flutter Blocs and Cubits.

## Getting Started

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/kiburtemesgen/coopah-dev-frontend
    ```

2.  **Navigate to the project directory:**
    ```bash
    cd coopah_dev_frontend
    ```

3.  **Install dependencies:**
    ```bash
    flutter pub get
    ```

4.  **Run the application:**
    ```bash
    flutter run
    ```

## Running Tests

The project includes comprehensive tests to ensure the reliability of different parts of the application. To run the tests:

```bash
flutter test
