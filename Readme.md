# Student Performance Prediction (End-to-End ML Project)

Production-style machine learning web application that predicts student math scores from demographic and academic inputs. The project demonstrates the full lifecycle: data ingestion, preprocessing, model selection/tuning, artifact persistence, and live inference through a Flask UI.

## Live Demo

- Deployed app: https://student-performance-prediction-tvod.onrender.com/
- Repository: https://github.com/TheKunal21/ETE_ML_PROJECT

## Why this project stands out

- End-to-end ownership: from raw dataset to deployed prediction service.
- Real ML engineering structure: modular components, reusable pipelines, serialized artifacts.
- Model benchmarking + selection: multiple regressors evaluated and best model persisted.
- Deployment-ready mindset: web interface, API endpoint pattern, logging and exception handling.
- Practical stack breadth: Flask + scikit-learn + CatBoost + XGBoost in one integrated system.

## Project Highlights

- Built and deployed an end-to-end ML prediction system on Render, connecting model artifacts to a live Flask web application.
- Designed a modular ML pipeline for ingestion, preprocessing, training, and inference using reusable components in `src/components` and `src/pipeline`.
- Benchmarked multiple regression models (including XGBoost and CatBoost) and persisted the best-performing model for production inference.
- Implemented robust preprocessing with `ColumnTransformer` + `Pipeline` (imputation, encoding, scaling) to ensure consistent train/inference behavior.
- Integrated UI-driven and API-style prediction flow with structured logging and custom exception handling for maintainability.

## Problem Statement

Given a student’s profile and prior scores, predict final **math score**.

### Inputs
- Gender
- Race/Ethnicity
- Parental level of education
- Lunch type
- Test preparation course
- Reading score
- Writing score

### Target
- Math score (regression)

## ML Pipeline Overview

1. **Data Ingestion**
   - Reads source data from `notebook/data/stud.csv`
   - Splits into train/test and stores under `artifacts/`

2. **Data Transformation**
   - Numerical pipeline: median imputation + standard scaling
   - Categorical pipeline: mode imputation + one-hot encoding + scaling
   - Saves preprocessor as `artifacts/preprocessor.pkl`

3. **Model Training & Selection**
   - Trains and tunes multiple regressors:
     - Random Forest
     - Decision Tree
     - Gradient Boosting
     - Linear Regression
     - KNN
     - XGBoost
     - CatBoost
     - AdaBoost
   - Evaluates models and persists best model to `artifacts/model.pkl`

4. **Prediction Service**
   - Flask app renders UI and serves prediction flow
   - Inference pipeline loads saved preprocessor + best model for predictions

## Project Structure

```text
ETE_ML_PROJECT/
├── app.py                          # Flask entrypoint
├── requirements.txt                # Dependencies
├── setup.py                        # Package setup
├── artifacts/                      # Trained model, preprocessor, train/test/raw data
├── src/
│   ├── components/
│   │   ├── data_ingestion.py
│   │   ├── data_transformation.py
│   │   └── model_trainer.py
│   ├── pipeline/
│   │   └── predict_pipeline.py
│   ├── utils.py
│   ├── logger.py
│   └── exception.py
├── templates/                      # Frontend templates
└── notebook/                       # EDA and experimentation notebooks
```

## Tech Stack

- **Language:** Python
- **ML/Data:** scikit-learn, pandas, numpy, XGBoost, CatBoost
- **Backend/Web:** Flask, Jinja2
- **Experimentation:** Jupyter Notebook
- **Deployment:** Render

## Run Locally

### 1) Clone
```bash
git clone https://github.com/TheKunal21/ETE_ML_PROJECT
cd ETE_ML_PROJECT
```

### 2) Create and activate virtual environment
```bash
python -m venv venv
```

**Windows (PowerShell):**
```powershell
.\venv\Scripts\Activate.ps1
```

**macOS/Linux:**
```bash
source venv/bin/activate
```

### 3) Install dependencies
```bash
pip install -r requirements.txt
pip install -e .
```

### 4) (Optional) Retrain model artifacts
```bash
python src/components/data_ingestion.py
```

### 5) Run application
```bash
python app.py
```

Open: `http://localhost:5000`

## Key Endpoints

- `/` → landing page
- `/predictdata` → prediction form (GET) + prediction result (POST)

## Skills Demonstrated

- End-to-end ML system design
- Structured Python project architecture
- Feature engineering and preprocessing pipelines
- Model benchmarking and selection workflow
- Production artifact management (`.pkl` preprocessor/model)
- Web integration for real-time inference

## Author

**Kunal Saini**
- GitHub: https://github.com/TheKunal21
- Email: cryptocoffee01@gmail.com

## License

This project is for educational and portfolio use.
