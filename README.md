## ⚙️ Requirements

- Flutter >= 3.27.x (stable)
- Dart >= 3.6.x

---

## 🧱 Tech Stack

### Architecture & State Management

- BLoC (flutter_bloc)
- Equatable
- Formz

### Networking

- Dio
- pretty_dio_logger

### Dependency Injection

- get_it
- injectable

### Routing

- go_router

### Code Generation

- freezed
- json_serializable
- build_runner

### Local Storage & Security

- flutter_secure_storage

---

## ⚙️ Setup

```bash
flutter pub get
```

## ▶️ Running 
```bash
flutter run --flavor dev --target lib/main_dev.dart --dart-define-from-file=env-dev.json
```