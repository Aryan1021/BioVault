# 🔐 BioVault – Biometric Login App 

BioVault is a Flutter application demonstrating secure biometric login using fingerprint authentication. It provides a smooth and secure user experience by integrating biometric APIs and secure local token storage.

## 🎯 Objective

Implement biometric authentication (fingerprint) inside a Flutter app to:
- Enhance user login security
- Improve UX with seamless authentication
- Provide fallback mechanisms and secure token management

---

## 📂 Project Structure

![image](https://github.com/user-attachments/assets/4fb45aa0-c4b9-4018-82c8-d80f046a4a15)

---

## 🛠️ Technologies Used

- **Flutter** 3.29.3
- **Dart** 3.7.2
- `local_auth` – for biometric authentication  
- `flutter_secure_storage` – for secure token storage  
- `Material 3` design

---

## ⚙️ Android Setup

In `AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.USE_BIOMETRIC" />
<uses-permission android:name="android.permission.USE_FINGERPRINT" />
<uses-feature android:name="android.hardware.fingerprint" android:required="false" />
```

In MainActivity.kt, extend FlutterFragmentActivity:

```xml
import io.flutter.embedding.android.FlutterFragmentActivity
class MainActivity : FlutterFragmentActivity()
```

---

## 🍏 For iOS:

In `Info.plist`:

```xml
<key>NSFaceIDUsageDescription</key>
<string>We use Face ID to secure your login</string>
```

---

## 📦 How to Set Up the Project

---

### 🔧 Requirements

- Flutter SDK (v3.29.3 or above)
- Android Studio or VS Code
- Real Android device with fingerprint set up
  
## 🛠️ Setup Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/biometric_login_app.git
   cd biometric_login_app
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run on a real device (with biometrics configured):**
   ```bash
   flutter run
   ```

## 🧪 Tested On

✅ Xiaomi device (Android 14) with fingerprint
✅ Emulator (fallback not available)
✅ Android 13 physical device

---

## 🌟 Key Features Implemented

---

**✅ Biometric Authentication**
- Uses local_auth package to authenticate using fingerprint.
- Triggers secure Android/iOS biometric dialog.

**🔐 Secure Token Storage**
- Uses flutter_secure_storage to store tokens encrypted in Android Keystore.

**🎨 User-Friendly Login UI**
- Animated fingerprint icon with Material 3 styling.
- Smooth navigation to home screen upon successful login.

**💾 Token-Based Auto Login**
- If a valid token is found in secure storage, user is auto-navigated to Home screen.

**📲 Android Permissions Setup**
- Required biometric permissions and features configured in AndroidManifest.xml.
- MainActivity updated to use FlutterFragmentActivity for compatibility.

---

## 📸 Screenshots
![Login Screen](https://github.com/user-attachments/assets/e1f68f3c-584d-424c-9ae3-8d4f169f9302)
![Biometric Prompt](https://github.com/user-attachments/assets/1429ba42-d57b-45da-8c76-d3d2dbbf33a4)
![Home Screen](https://github.com/user-attachments/assets/f412bbed-9ac1-4c90-9b50-d9e634e2b121)

## 🎬 Demo Video
▶️ [Click here to watch the demo video](https://drive.google.com/drive/u/0/folders/1eSslX-2pNGM544mSsVYZxhtCN_r5G4KU)

---

## ⚠️ Limitations & Assumptions

---

⚠️ Biometric fallback (PIN) was initially implemented but disabled in the final version for simplicity.
⚠️ No backend or real token validation. Tokens are simulated (biometric_token) for demonstration only.
✅ Assumes biometrics are already set up on the device.

---

## 👨‍💻 Author
Aryan Raj

---

## 📄 License
This project is licensed under the MIT License - see the LICENSE file for details.
