# Mise mobile app

```
lib
├── components            // Smaller widgets (blocks etc.)
├── models                // Model (as the M in MVVM and perhaps DAO related ones)
├── providers             // providers
└── screens               // Basic screens of the app
```

## Run the App
To run the app in dev mode (which means the backend server is run locally), run
```bash
flutter run -t lib/main_dev.dart
```

To run the app in production mode (which is to connect to the production server), run
```bash
flutter run -t lib/main_prod.dart
```

