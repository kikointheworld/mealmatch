# MealMatch

MealMatch is a Flutter mobile app for discovering and saving restaurants.
The current project focuses on map-based browsing, keyword search, bookmark lists, and basic user profile flows backed by Firebase.

![MealMatch login screen](/Users/gimseonjae/Documents/GitHub/mealmatch/image/main.png)

## Current status

This repository appears to be an in-progress prototype. The implemented experience is closer to a restaurant discovery app than an AI recommendation product.

## What is implemented

- Email/Google-based sign-in flow with Firebase Authentication
- Naver Map integration for browsing restaurant locations
- Restaurant search by name
- Dietary/tag-style filtering for nearby places
- Restaurant detail pages with menu and review sections
- Saved place lists with create, edit, and delete flows
- Basic profile and preference screens

## Tech stack

- Flutter
- Dart
- Firebase Authentication
- Firebase Realtime Database
- Cloud Firestore
- Provider
- Naver Map SDK
- Geolocator

## Project structure

```text
lib/
  main.dart                 App bootstrap
  screen/                   Login and main navigation
  nearby/                   Map view and nearby restaurant experience
  search/                   Search UI
  save/                     Saved lists and bookmarks
  my/                       Profile and settings screens
  services/data_manager.dart Shared app state and Firebase data access
  models/                   Restaurant, menu, review, and bookmark models
```

## Running locally

### 1. Install dependencies

```bash
flutter pub get
```

### 2. Configure platform credentials

This app depends on external services and will not run correctly without valid local configuration.

- Firebase config files are required for each target platform
- A valid Naver Map client ID is required
- Google Sign-In must be configured in Firebase for supported platforms

Relevant files already present in this repo include:

- `lib/firebase_options.dart`
- `android/app/google-services.json`
- `ios/Runner/GoogleService-Info.plist`
- `macos/Runner/GoogleService-Info.plist`

Before sharing or deploying the project, review whether those files should remain committed.

### 3. Run the app

```bash
flutter run
```

## Data model notes

The app currently reads restaurant data from Firebase Realtime Database and expects a `restaurants` collection-like node containing:

- bilingual names and addresses
- category and opening-hours fields
- latitude and longitude
- images, menus, and reviews
- classification flags used for filtering

User bookmark lists are also stored in Realtime Database under each authenticated user.

## Gaps and follow-up ideas

- Document the expected Firebase database schema with sample payloads
- Move secrets and service credentials out of the repository if this becomes public
- Add smoke tests for login, data loading, and bookmark flows
- Clarify whether the long-term product direction is discovery, recommendation, or both

## License

No license file is currently included in the repository. If you plan to open-source this project, add an explicit license.
