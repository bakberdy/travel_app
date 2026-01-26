# Using Localized Error Messages

## Overview
The app now supports multi-language error messages using the `FailureLocalization` extension.

## How to Use

### 1. Basic Usage in UI Layer

```dart
import 'package:travel_app/src/core/error/failure_localization_extension.dart';

// In your BLoC, Cubit, or StatefulWidget
final result = await getRoutesUsecase(params);

result.fold(
  (failure) {
    // Get localized error message
    final errorMessage = failure.localizedMessage(context);
    
    // Display to user
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(errorMessage),
        backgroundColor: Colors.red,
      ),
    );
  },
  (routes) {
    // Handle success
    setState(() {
      _routes = routes;
    });
  },
);
```

### 2. Getting Localized Title for Dialogs

```dart
result.fold(
  (failure) {
    final title = failure.localizedTitle(context);
    final message = failure.localizedMessage(context);
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  },
  (routes) {
    // Handle success
  },
);
```

### 3. Example with Route Validation Errors

```dart
final params = GetRouteRequestParametersEntity(
  minKm: 100.0,
  maxKm: 50.0, // This will trigger validation error
);

final result = await getRoutesUsecase(params);

result.fold(
  (failure) {
    // Will show: "Minimum distance (100.0 km) cannot be greater than maximum distance (50.0 km)"
    // In Russian: "Минимальное расстояние (100.0 км) не может быть больше максимального расстояния (50.0 км)"
    // In Kazakh: "Минималды қашықтық (100.0 км) максималды қашықтықтан (50.0 км) үлкен бола алмайды"
    
    final errorMessage = failure.localizedMessage(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(errorMessage)),
    );
  },
  (routes) {
    // Handle success
  },
);
```

## Available Failure Codes for Routes

| Code | English Message | Use Case |
|------|----------------|----------|
| `failure_3005` | "Minimum distance ({minKm} km) cannot be greater than maximum distance ({maxKm} km)" | When minKm > maxKm |
| `failure_3006` | "Minimum distance cannot be negative ({minKm} km)" | When minKm < 0 |
| `failure_3007` | "Maximum distance cannot be negative ({maxKm} km)" | When maxKm < 0 |

## How It Works

1. **Validation fails** in the UseCase → returns `ValidationFailure` with:
   - `code`: Localization key (e.g., `failure_3005`)
   - `message`: English fallback message
   - `messageParams`: Dynamic values for interpolation (e.g., `{minKm: "100.0", maxKm: "50.0"}`)

2. **In the UI**, call `.localizedMessage(context)` on the failure:
   - Gets current locale from `AppLocalizations.of(context)`
   - Looks up the translation using the `code`
   - Replaces parameters in the message (e.g., `{minKm}` → `100.0`)
   - Returns fully localized message

3. **Falls back** to the default English message if:
   - Translation not found
   - Locale not supported
   - Any localization error occurs

## Language Support

- ✅ English (en)
- ✅ Russian (ru)
- ✅ Kazakh (kk)

## Testing Different Languages

To test error messages in different languages, change your device/simulator language settings or add this to your test:

```dart
testWidgets('displays localized error message', (tester) async {
  await tester.pumpWidget(
    MaterialApp(
      locale: Locale('ru'), // Test in Russian
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: YourWidget(),
    ),
  );
  
  // Your test code...
});
```
