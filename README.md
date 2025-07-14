# 🎓 Scholarships App – Scraper & Mobile Viewer

This project is divided into two complementary parts:

1. [`scholarships_scrapper`](https://github.com/BBednareek/scholarships_scrapper) – A Python web scraper that extracts scholarship data from selected websites and uploads it to Firebase Firestore.
2. [`scholarships_mobile`](https://github.com/BBednareek/scholarships_mobile) – A Flutter mobile application that fetches this data from Firestore and displays it to end users.

---

## 📁 Repositories

- **Scraper**: [`scholarships_scrapper`](https://github.com/BBednareek/scholarships_scrapper)
- **Mobile app**: [`scholarships_mobile`](https://github.com/BBednareek/scholarships_mobile)

---

## 🔧 scholarships_scrapper

### Overview
A Python-based script that:
- Scrapes scholarship listings from selected online sources
- Extracts key details (title, description, deadline, link, etc.)
- Saves the data directly into **Google Firebase Firestore**

### Technologies Used
- `requests`
- `BeautifulSoup`
- `firebase-admin`
- `python-dotenv`

### Setup

```bash
git clone https://github.com/BBednareek/scholarships_scrapper.git
cd scholarships_scrapper
pip install -r requirements.txt
```

You’ll need to provide your Firebase service account credentials and set up the `.env` file with the necessary configuration.

---

## 📱 scholarships_mobile

### Overview
A Flutter mobile app that:
- Connects to Firebase Firestore
- Displays the scraped scholarship data
- Supports basic navigation and filtering

### Features
- List view of all available scholarships
- Detail view for each scholarship
- Real-time updates from Firestore

### Technologies Used
- Flutter
- Firebase (Cloud Firestore)
- BLoC with Freezed
- Get_it with injectable for dependency injection

### Setup

```bash
git clone https://github.com/BBednareek/scholarships_mobile.git
cd scholarships_mobile
flutter pub get
```

Make sure to configure Firebase properly in both Android and iOS folders (add `google-services.json` and `GoogleService-Info.plist` accordingly).

---

## 🔗 How It Works

1. **Scraper runs periodically** (manually or via CRON/scheduler).
2. It gathers and uploads scholarship data to **Firestore**.
3. The **mobile app** retrieves this data and presents it in a user-friendly way.

---

## 🧑‍💻 Author

Developed by [BBednareek](https://github.com/BBednareek)
