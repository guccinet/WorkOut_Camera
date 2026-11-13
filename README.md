# Fitness AI

Flutter app for exercise guidance, pose tracking, workout history, and calorie
tracking.

## Requirements

- Flutter 3.32 or newer (Dart 3.9 or newer)
- JDK 17 or newer
- Android Studio and the Android SDK for Android builds

Configure `JAVA_HOME` to point to an installed JDK before building Android.
The project intentionally does not pin a machine-specific Java installation.

## Run and test

```shell
flutter pub get
flutter run
flutter analyze
flutter test
```

## Android release signing

Release builds are never signed with the debug key. For a signed release,
create `android/key.properties` locally with `storePassword`, `keyPassword`,
`keyAlias`, and `storeFile` entries. The keystore path is relative to
`android/app`. This file is ignored by Git; do not commit signing credentials
or the keystore.
