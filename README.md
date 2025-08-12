# Product List with Search and Filter

A mobile application demonstrating a responsive product list with live search and category filtering. This project uses the **GetX** package for efficient state management and follows the **MVC (Model-View-Controller)** architectural pattern.

-----

## Features

- **Live Search:** Filters the product list in real-time based on the title as you type.
- **Dynamic Filtering:** Allows users to filter products by category using a dropdown menu.
- **GetX State Management:** Ensures a reactive UI that updates seamlessly with search and filter changes.
- **REST API Integration:** Fetches product data from the `fakestoreapi.com` mock API.
- **Visual Feedback:** Enhances user experience with a pull-to-refresh feature and a skeleton loader.

-----

## Getting Started

Follow these steps to get a local copy of the project up and running.

### Prerequisites

- **Flutter SDK:** Ensure the Flutter SDK is installed on your system.
- **Code Editor:** A code editor like VS Code or Android Studio.

### Installation

1.  Clone the repository:
    ```bash
    git clone https://github.com/AbuZafor99/Product-List-with-Search-and-Filter
    ```
2.  Navigate to the project directory:
    ```bash
    cd Product-List-with-Search-and-Filter
    ```
3.  Install dependencies:
    ```bash
    flutter pub get
    ```
4.  Run the application:
    ```bash
    flutter run
    ```

-----

## Dependencies

- **flutter:** The framework for building multi-platform applications.
- **get:** A powerful state management and navigation library for Flutter.
- **http:** A package for making HTTP requests to fetch data from a REST API.