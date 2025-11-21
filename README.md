# 🎵 CM Music App (Flutter)


---

## 📌 Project Overview

This is a **simple local music player app** built with **Flutter**. It allows users to:

- Browse and play local audio files  
- Manage basic playlists  
- Control playback (play, pause, next, previous)  
- Enjoy a clean and responsive UI  

This app is **beginner-friendly** and optimized for local music playback, making it lightweight and fast.

## 📂 Project Structure
```
lib/
├── main.dart                  # Entry point
├── app/
│   ├── app.dart               # App setup (themes, routing)
│   ├── routes.dart            # Simple route management
│   └── theme.dart             # Light/Dark theme
├── core/
│   ├── constants.dart         # App constants, colors
│   └── utils.dart             # Helper functions, extensions
├── data/
│   ├── models/
│   │   └── song_model.dart    # Song metadata (title, path, duration)
│   └── services/
│       └── audio_service.dart # Local audio playback logic
├── domain/
│   └── entities/
│       └── song.dart          # Song entity for app logic
├── presentation/
│   ├── controllers/
│   │   └── music_controller.dart # Controls playback, playlists
│   └── pages/
│       ├── home_page.dart
│       ├── player_page.dart
│       └── playlist_page.dart
└── assets/
    ├── audio/                 # Local music files
    ├── images/                # App icons, backgrounds
    └── fonts/                 # Optional custom fonts

```

## ⚡ Features

- Play, pause, skip, and seek local songs  
- Display song metadata (title, artist, duration)  
- Create and manage playlists  
- Simple and responsive UI  
- Light and Dark theme support  

## 🛠️ Tech Stack

- **Flutter**: Frontend framework  
- **Dart**: Programming language  
- **GetX**: State management & routing (optional for small apps)  
- **Local Storage**: Save playlists or user preferences  
- **Audio Player**: Plays local audio files  

---

## 🚀 Getting Started

1. Clone the repository:

```
git clone https://github.com/CM-Kali/LocalMusicPlayer.git
```
```
cd LocalMusicPlayer
```
```
flutter pub get
```
Run the app:

```
flutter run
```
Make sure your device/emulator has audio files in the assets/audio folder.

📝 Contribution
This project is beginner-friendly. Contributions are welcome:

Suggest new features

Help improve UI or code quality

Add additional audio functionalities

📄 License
This project is licensed under the MIT License. See LICENSE for details.

Made with ❤️ by Muhammad Adeel Abid (CMADEEL)


