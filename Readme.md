# Student Performance Prediction - End-to-End ML Project

A full-stack machine learning web application that predicts student math scores based on demographic and academic features. Built with Flask, scikit-learn, CatBoost, and XGBoost.

---

## 🚀 Features

- **End-to-End ML Pipeline:** Data ingestion, transformation, model training, and prediction.
- **Modern Web UI:** Responsive, professional interface for user input and results.
- **REST API:** Easily test predictions via Postman or other tools.
- **Multiple ML Models:** Compares and selects the best regression model (Random Forest, CatBoost, XGBoost, etc.).
- **Reproducible Experiments:** Jupyter notebooks for EDA and model training.

---

## 🏗️ Project Structure

```
ETE_ML_PROJECT/
│
├── app.py                  # Main Flask application
├── requirements.txt        # Python dependencies
├── setup.py                # Package setup
├── artifacts/              # Model artifacts (trained model, preprocessor, data splits)
├── src/
│   ├── components/         # Data ingestion, transformation, and model training modules
│   ├── pipeline/           # Prediction and training pipelines
│   ├── utils.py            # Utility functions
│   ├── logger.py           # Logging setup
│   └── exception.py        # Custom exception handling
├── templates/              # HTML templates (UI)
├── notebook/               # Jupyter notebooks for EDA and model training
│   └── data/               # Raw data (stud.csv)
└── logs/                   # Log files
```

---

## 📊 Data

- **Source:** `notebook/data/stud.csv`
- **Features:** Gender, Race/Ethnicity, Parental Level of Education, Lunch, Test Preparation Course, Reading Score, Writing Score
- **Target:** Math Score

---

## 🧑‍💻 Usage

### 1. Clone the Repository

```bash
git clone <your-repo-url>
cd ETE_ML_PROJECT
```

### 2. Install Dependencies

```bash
pip install -r requirements.txt
```

### 3. Train the Model

```bash
python src/components/data_ingestion.py
```
This will:
- Ingest and split the data
- Transform features
- Train multiple regression models
- Save the best model and preprocessor in `artifacts/`

### 4. Run the Web App

```bash
python app.py
```
Visit `http://localhost:5000` in your browser.

### 5. Predict via API

Send a POST request to `/predictdata` with form data matching the input fields.

---

## 📒 Notebooks

- `notebook/1 . EDA STUDENT PERFORMANCE .ipynb`: Exploratory Data Analysis
- `notebook/2. MODEL TRAINING.ipynb`: Model training and evaluation

---

## 🛠️ Tech Stack

- **Backend:** Flask
- **ML:** scikit-learn, CatBoost, XGBoost
- **Frontend:** HTML5, CSS3 (custom, responsive)

---

## 🙋‍♂️ Author

- **Kunal Saini**
- Email: cryptocoffee01@gmail.com

---

## 📄 License

This project is for educational and portfolio purposes.

---

## 🤝 Acknowledgements

- Inspired by real-world student performance datasets and ML best practices.



