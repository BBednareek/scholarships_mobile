# 🎓 Scholarships Mobile App

This project is a mobile application that displays up-to-date scholarship opportunities scraped from the web. The data is collected using a custom Python scraper and stored in **Firebase Cloud Firestore** for real-time access within the mobile app.

---

## 📌 Key Features

- 🔎 Automatically scrapes scholarships from **two target websites**
- 🔁 Pushes scraped data directly to **Firebase Cloud Firestore**
- 📱 Mobile app retrieves and displays real-time data
- 📂 Clean and maintainable project structure
- 🔥 Firestore ensures real-time updates with no backend server required

---

## 🧠 How It Works

### Architecture

[ Web Pages (x2) ]
↓
[ Python Scraper ]
↓
[ Firestore Database (Firebase) ]
↓
[ Mobile App ]


1. **Scraper**  
   A Python script you wrote scrapes two websites for scholarship data. It pushes that data immediately to a Firestore database hosted on the Firebase platform.

2. **Database**  
   Cloud Firestore stores the data in a `scholarships` collection. Documents represent individual scholarship listings.

3. **Mobile App**  
   The app (written using [insert framework: Flutter, React Native, etc.]) connects to Firestore to display a dynamic, real-time list of scholarships.

---

## 🚀 Getting Started

### Clone the Repository

```bash
git clone https://github.com/BBednareek/scholarships_mobile.git
cd scholarships_mobile
1. Set Up the Python Scraper

cd scraper
pip install -r requirements.txt
Update config.py with:

Your Firebase credentials
The two URLs to scrape
Then run the scraper:

python scrape_and_push.py
This will scrape data and push it to Firestore.

2. Set Up the Mobile App

cd mobile_app
# For Flutter:
flutter pub get
# OR for React Native:
npm install
Ensure Firebase is configured in your mobile app:

google-services.json (Android)
GoogleService-Info.plist (iOS)
Then run the app:


# Flutter
flutter run
# OR React Native
npm run android
🧪 Testing

Python Scraper: Use pytest or run unit tests manually in the scraper/ folder
Mobile App: Run widget/UI tests using the framework's tools
🗂️ Project Structure


scholarships_mobile/
├── scraper/               # Python scraper for scraping and uploading
│   ├── scrape_and_push.py
│   ├── config.py
│   └── requirements.txt
├── mobile_app/            # Cross-platform mobile app code
│   ├── lib/ or src/
│   ├── pubspec.yaml or package.json
│   └── firebase config files
└── README.md              # Project overview
📅 Future Improvements

Schedule the scraper to run automatically (e.g., with GitHub Actions or a cron job)
Add filters (e.g., by country, eligibility, deadline)
Add push notifications for new scholarships
🤝 Contributing

Fork this repository
Create a new branch: git checkout -b feature/my-feature
Commit your changes: git commit -m "Add my feature"
Push to the branch: git push origin feature/my-feature
Open a Pull Request
📄 License

This project is licensed under the MIT License.

📬 Contact

Created by @BBednareek
For questions or suggestions, please open an issue.
"""