# 🏀 Points Counter App

A clean, modular, and responsive Flutter application designed to track basketball match scores between two teams in real-time.

---

## 📱 Preview

<p align="center">
  <img src="https://github.com/user-attachments/assets/b218c2bf-493a-4e87-bbb1-a4f4a5971f89" alt="App Preview" width="350"/>
</p>

---

## ✨ Features

* **Team Scoring:** Independent score tracking for both **Team A** and **Team B**.
* **Incremental Points:** Quick addition buttons for **+1**, **+2**, and **+3** points.
* **Match Reset:** Global reset button to clear scores and restart the match.
* **Responsive Layout:** Adaptive layout utilizing `IntrinsicHeight` and custom sizing to maintain UI symmetry.

---

## 🏗️ Architecture & Concepts Applied

* **State Lifting (Lifting State Up):** Managing the score state at the common parent widget level (`PointsCount`) to keep child components stateless and reusable.
* **Component Modularity:** Separation of UI elements into standalone widgets (`TeamPoints`, `AddButton`).
* **Clean Code & Performance:** Proper usage of `StatelessWidget`, `final` properties, and immutable constructor patterns.

---

## 📂 Project Structure

```text
lib/
│
├── main.dart                   # Entry point of the app
├── points_counter_screen.dart  # Scaffold & AppBar wrapper
├── points_count.dart           # Main stateful widget managing scores
├── team_points.dart            # Reusable team column UI
└── add_button.dart             # Custom styled ElevatedButton component
