# 🥗 Healthy Meal & Recipe App

A beautiful, responsive, and cross-platform Flutter application designed to help users discover healthy food recipes, track meal metrics, and manage their cooking goals. Built with an intuitive UI/UX and a scalable clean architecture using the BLoC/Cubit pattern.

---

## 📸 Screenshots

### 📱 Application Overview
Here is a complete look at the application workflow, showcasing the main home dashboard, custom onboarding flow, and secure authentication interfaces.

<p align="center">
  <img src="assets/mealapp 5.png" width="600" alt="Application Mockup Showcase">
</p>

### 🔄 Core User Flow
Below is a step-by-step preview of the core user journey, starting from the splash screen to onboarding and user authentication.

| 1. Your Path | 2. Popular Recipes | 3. Secure Sign In | 4. Easy Sign Up |
| :---: | :---: | :---: | :---: |
| <img src="assets/mealapp 3.png" width="210" alt="Onboarding Screen"> | <img src="assets/mealapp 4.png" width="210" alt="Splash Screen"> | <img src="assets/mealapp 2.png" width="210" alt="Login Screen"> | <img src="assets/mealapp 1.png" width="210" alt="Sign Up Screen"> |

---

## ✨ Features

*   **Seamless Onboarding Flow:** A welcoming, high-conversion introductory interface to smoothly guide users into the app.
*   **Secure Authentication:** Integrated Sign In and Sign Up flows supporting standard credentials and social authentication layouts.
*   **Categorized Meal Browsing:** Filter and explore delicious recipes organized by categories such as **Breakfast**, **Lunch**, and **Dinner**.
*   **Macro Tracking & Metrics:** Clear visibility on essential cooking insights, including preparation times and calorie metrics ($Kcal$) for every dish.
*   **Intuitive UI/UX Design:** Built entirely from the ground up using reusable components, clean padding rules, and consistent dynamic styling.
*   **Global State Synchronization:** Perfectly synced custom bottom navigation bar keeping data consistent across favorite lists and category sections.

---

## 🛠️ Architecture & Tech Stack

This project implements **Clean Code Architecture principles** combined with high-performing cloud backends:

*   **Framework:** `Flutter` (Cross-platform Android, iOS, Web)
*   **Language:** `Dart`
*   **State Management:** `Bloc / Cubit Pattern` (Separating presentation from core business logic)
*   **Backend & DB:** `Firebase Auth` & `Cloud Firestore` (For reliable real-time updates and secure data handling)
*   **API Service Integration:** Designed to interact seamlessly with local data repositories and `REST APIs`