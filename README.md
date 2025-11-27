# ToothAI – Dental Solutions App

A smart dental diagnosis and appointment management system powered by AI for dental X‑ray image classification (Thick vs Thin), with both **online (server-based)** and **offline (on-device TFLite)** prediction support.

---

## 🚀 Overview

ToothAI is a mobile application designed to assist dental professionals and patients by providing:

* Dental X‑ray image classification using AI/ML
* Appointment and patient management
* Doctor–patient integration with MySQL backend
* Online prediction via Flask API (.h5 or .tflite server model)
* Offline AI prediction via TFLite (on Android device)

The app uses:

* **Flutter** (Frontend)
* **PHP / Flask** (Backend)
* **MySQL** (Database)
* **TensorFlow Lite** for offline predictions

---

## 🧠 Features

### ✔️ AI-Based Dental X‑Ray Classification

* Classifies images into **Thick** or **Thin** categories
* Supports **server-side model** using Flask
* Supports **on-device** TFLite model
* Auto-switch between online/offline prediction

### ✔️ Patient & Appointment System

* Manage patients, doctors, and appointments
* Sends `appointmentid`, `doctorid`, and `patientid` from frontend to backend
* Retrieves doctor name, patient name, and appointment date
* Displays details on prediction screen

### ✔️ Medical Data Flow Integration

* Upload dental X‑ray
* Process through online/offline model
* Show prediction with metadata

---

## 📱 App Flow

1. **Login / Registration** (Doctor or Patient)
2. **Home Dashboard**
3. **Patient List → Appointment List**
4. **Upload Dental X‑Ray** (DeepLearningUpload screen)
5. **Send To Server / Use Local TFLite**
6. **Receive Prediction**
7. **DeepLearningPrediction Screen** displays:

   * Diagnosis (Thick / Thin)
   * Confidence Score
   * Doctor Name
   * Patient Name
   * Appointment Date

---

## 🗂️ Project Structure (Flutter)

```
lib/
│── deep_learning_upload.dart
│── deep_learning_prediction.dart
│── services/
│     └── api_service.dart
│── models/
│     └── appointment_model.dart
│── screens/
│── widgets/
```

---

## 🖥️ Backend Details

### ✔️ PHP Backend (XAMPP)

* Used for authentication, appointments, patient data
* Endpoint example: `predict.php` (for server prediction)

### ✔️ Flask Backend (TFLite Model)

* Endpoint: `/predict`
* Accepts image + metadata
* Responds with:

```
{
  "diagnosis": "Thick",
  "confidence": 0.94,
  "doctor_name": "Dr. Smith",
  "patient_name": "John Doe",
  "appointment_date": "2024-06-24"
}
```

### ✔️ Database (MySQL)

Tables:

* doctors
* patients
* appointments
* predictions

---

## 🤖 AI/ML Model

### Online Model (Server)

* `.h5` Keras model hosted on Flask
* Preprocessing done server-side

### Offline Model (Device)

* `.tflite` model placed under:

```
assets/models/federated_model.tflite
```

* Used when the device is offline

---

## 🛠️ Requirements

### Frontend

* Flutter SDK
* Dart
* Android Studio

### Backend

* XAMPP (Apache + MySQL)
* PHP 8+
* Python + Flask
* TensorFlow/TFLite

---
* Built with Flutter, PHP, MySQL, and Flask
* TensorFlow + TFLite for machine learning

---

## 📬 Support

If you need help configuring the backend, fixing online/offline prediction, or resolving errors, feel free to ask.
