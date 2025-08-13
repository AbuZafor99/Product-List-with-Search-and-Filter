# Product List App with Search and Filter

A Flutter project that demonstrates a product list application with search and filter functionalities.

## 1. Project Overview

This project is a mobile application built with Flutter that displays a list of products fetched from a remote API. Users can browse the products, search for specific items by their title, and filter the list based on product categories. The app is designed to be simple, responsive, and user-friendly.

### Key Features:
- **Product Listing:** Displays a list of products with their images, titles, and prices.
- **Search Functionality:** Allows users to search for products by their names in real-time.
- **Filter Functionality:** Enables filtering of products by category through a dropdown menu.
- **Data Fetching:** Fetches product data from the Fake Store API.
- **State Management:** Uses GetX for efficient state management and dependency injection.
- **User-Friendly UI:** A clean and intuitive user interface with a loading indicator and pull-to-refresh functionality.

## 2. Technologies Used

- **Flutter:** For building the cross-platform mobile application.
- **GetX:** A powerful and lightweight state management library for Flutter.
- **http:** A package for making HTTP requests to fetch data from the API.
- **Dart:** The programming language used for Flutter development.

## 3. Features

### Search Functionality
- Users can search for products by typing in the search bar at the top of the screen.
- The search is performed on the product titles and updates the list in real-time.

### Filter Functionality
- Products can be filtered by their category using a dropdown menu.
- The list of categories is dynamically generated from the fetched products.
- Selecting a category will instantly update the product list to show only items from that category.

### Data Fetching
- The app fetches product data from the [Fake Store API](https://fakestoreapi.com/products).
- An `ApiService` class is responsible for handling the API requests.

## 4. Architecture

The project follows a simplified Model-View-Controller (MVC) architecture, facilitated by the GetX package.

- **Model:** The `Product` class (`lib/data/models/product.dart`) represents the data structure for a single product.
- **View:** The `ProductListScreen` (`lib/ui/screens/product_list_screen.dart`) is responsible for rendering the UI and displaying the product data.
- **Controller:** The `ProductController` (`lib/ui/controllers/product_controller.dart`) handles the business logic, state management, and interactions between the View and the Model.

### State Management
- State management is handled by GetX. The `ProductController` holds the state of the application, including the list of products, search queries, and selected filters.
- The UI is updated reactively using `Obx` widgets that listen to changes in the controller's observable variables.

### Data Flow
1. The `ProductController` is initialized and calls the `ApiService` to fetch the product data.
2. The `ApiService` makes an HTTP GET request to the API and returns a list of `Product` objects.
3. The `ProductController` stores the fetched products in an observable list.
4. The `ProductListScreen` observes the list of products and displays them in a `ListView`.
5. User interactions (like searching or filtering) update the state in the `ProductController`, which in turn updates the UI.

## 5. Code Structure

```
lib/
├── data/
│   ├── models/
│   │   └── product.dart      # Data model for products
│   └── service/
│       └── api_service.dart  # Service for fetching data from the API
├── ui/
│   ├── controllers/
│   │   └── product_controller.dart # Business logic and state management
│   ├── screens/
│   │   └── product_list_screen.dart # The main screen of the app
│   └── widgets/
│       └── product_card.dart   # UI widget for a single product item
├── main.dart                 # Main entry point of the application
└── myapp.dart                # App routes and pages configuration
```

## 6. Setup Instructions

To set up and run the project locally, follow these steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/product_list_with_search_and_filter.git
   cd product_list_with_search_and_filter
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the app:**
   ```bash
   flutter run
   ```

### Environment Setup
- No special environment setup is required. The app uses a public API, so no API keys are needed.

## 7. Dependencies

The following packages are used in this project:

- `flutter`: The core Flutter framework.
- `get`: For state management, dependency injection, and routing.
- `http`: For making HTTP requests.
- `cupertino_icons`: For iOS-style icons.

## 8. How to Use the App

- **Browse Products:** Scroll through the list to see all the available products.
- **Search for a Product:** Tap the search bar and start typing to find a product by its title.
- **Filter by Category:** Use the dropdown menu to select a category and view products from that category.
- **Refresh the List:** Pull down from the top of the list to refresh the product data.

## 9. Known Issues or Future Enhancements

### Known Issues
- No known issues at the moment.

### Future Enhancements
- **Add more filters:** Implement filtering by price range or other product attributes.
- **Product Detail Page:** Create a new screen to show more details about a selected product.
- **Add to Cart:** Implement a shopping cart feature.
- **Improved Error Handling:** Show more user-friendly error messages for network issues.
- **Unit and Widget Tests:** Add tests to ensure the app is working correctly.

