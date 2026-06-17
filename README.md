# 🥗 Healthy Meal & Recipe App

A beautiful, responsive, and cross-platform Flutter application designed to help users discover healthy food recipes, track meal metrics, and manage their cooking goals. Built with an intuitive UI/UX and a scalable clean architecture using the BLoC/Cubit pattern.
<p align="center">
  <img src="assets/mealapp 1.png" width="320" alt="App Main Showcase">
</p>
---

## 📸 Application User Flow & Screenshots

### 🔄 1. Onboarding & Authentication Sequence
The exact sequential journey a user takes when launching the application for the first time, leading from the initial splash to account creation.

| 1. Splash Screen | 2. Onboarding Flow | 3. Secure Sign In | 4. Easy Sign Up |
| :---: | :---: | :---: | :---: |
| <img src="assets/mealapp 2.png" width="210" alt="Splash Screen"> | <img src="assets/mealapp 3.png" width="210" alt="Onboarding Screen"> | <img src="assets/mealapp 5.png" width="210" alt="Login Screen"> | <img src="assets/mealapp 4.png" width="210" alt="Sign Up Screen"> |

---

### 📱 2. Core Features & App Experience
Once authenticated, the user unlocks the full experience: browsing meals, diving deep into ingredients/macros, and managing their favorites list.

| 5. Home Dashboard | 6. Meal Details & Macros | 7. My Favorites |
| :---: | :---: | :---: |
| <img src="assets/mealapp 6.png" width="260" alt="Home Dashboard"> | <img src="assets/mealapp 8.png" width="260" alt="Meal Details"> | <img src="assets/mealapp 7.png" width="260" alt="Favorites Screen"> |

---

## 📖 Detailed Project Explanation

This application is far more than just static UI views. It is a fully functional, metric-focused architecture designed to manage health and dietary goals through the following mechanisms:

### 1️⃣ User Journey & Flow
* **Welcome Experience:** The app begins with an elegant **Splash Screen** displaying the application logo, which transitions into an interactive **Onboarding Flow** explaining how the platform helps optimize daily lifestyle habits.
* **Identity & Authentication:** Users can securely register (**Sign Up**) or authenticate (**Login**). The UI layouts are pre-configured to easily scale into social logins (Google, Apple, Facebook).
* **Core Navigation:** Upon authentication, entry views are cleared from the navigation stack to optimize memory, directing the user to the central dashboard managed by a sleek, custom persistent **Bottom Navigation Bar**.

### 2️⃣ Reactive Features & Logic
* **Dynamic Category Filtering:** The application populates dietary divisions (Breakfast, Lunch, Dinner, Snacks) via custom interaction chips. Selecting any category triggers the state management to instantaneously filter and render matching entries.
* **Granular Macro & Ingredient Analytics:** Clicking on any recipe transitions the user to a detailed overview featuring high-resolution assets, itemized ingredient listings, and precise micro/macro nutritional tracking data including Carbs, Proteins, Fats, and total Calorie metrics ($Kcal$).
* **Synchronized Favorites Lifecycle:** Users can add or remove items globally. The reactive state management handles synchronous UI updates, ensuring that if an item is un-favorited from the favorites list, the state reflects properly upon returning to the home viewport.

---

## 🛠️ Code Architecture Breakdown

The project strictly follows **Clean Code and SOLID principles**, isolating different modules to maintain a clear separation of concerns:
* **Repository Pattern:** Remote and local data querying logic is completely abstracted within a dedicated `MealsRepository`. This simplifies swapping hardcoded data collections with active cloud configurations like `Cloud Firestore` or external `REST APIs` downstream without changing presentation logic.
* **State Management:** All client interactions communicate directly with predictable `Bloc/Cubit` streams. UI layers smoothly respond to distinct immutable states (`Loading`, `Success`, `Failure`), maximizing performance and memory efficiency.

---

## 🚀 Tech Stack Summary

* **Framework:** `Flutter` (Cross-platform Android, iOS, Web)
* **Language:** `Dart`
* **State Management:** `Bloc / Cubit Pattern`
* **Backend & Security:** `Firebase Auth` & `Cloud Firestore`
* **Data Layer Architecture:** `REST APIs` & Isolated Repositories