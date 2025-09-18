# 🤖 Machine Learning

Repository ini berisi kumpulan praktikum, tugas, dan proyek machine learning untuk mata kuliah Machine Learning di tingkat perguruan tinggi.

## 🎯 Tujuan Repository

Repository ini dibuat untuk:

- 📚 Dokumentasi pembelajaran machine learning
- 🔬 Eksperimen dengan berbagai algoritma ML
- 📊 Analisis dataset klasik dan real-world
- 🏗️ Implementasi proyek machine learning end-to-end

## 📁 Struktur Repository

```
Machine-Learning/
├── JS01/                                          # Etika dan Dampak AI
│   ├── JS01_2341720112_Vidi-Joshubzky-Saviola.ipynb
│   └── README.md
├── JS02/                                          # Data Preprocessing Fundamentals
│   ├── JS02_Praktikum1.ipynb                     # Pengenalan Data
│   ├── JS02.Praktikum2.ipynb                     # Data Cleaning
│   ├── JS02.Praktikum3.ipynb                     # Data Transformation
│   ├── JS02_Praktikum4.ipynb                     # Feature Engineering
│   ├── JS02_2341720112_Vidi-Joshubzky-Saviola.ipynb # Tugas Utama
│   └── README.md
├── JS03/                                          # Machine Learning Pipeline
│   ├── Praktikum1.ipynb                          # Pengenalan ML
│   ├── Praktikum2.ipynb                          # Data Preprocessing
│   ├── Praktikum3.ipynb                          # Exploratory Data Analysis
│   ├── Praktikum4.ipynb                          # Feature Engineering
│   ├── TP.ipynb                                  # Tugas Praktikum
│   ├── data/                                     # Dataset folder
│   │   ├── wbc.csv                               # Wisconsin Breast Cancer
│   │   ├── Titanic-Dataset*.csv                  # Titanic datasets
│   │   └── Lenna.png                             # Image dataset
│   └── README.md
├── venv/                                          # Virtual environment Python
├── .git/                                         # Git version control
└── README.md                                     # File dokumentasi ini
```

## 🔬 Topik yang Dipelajari

### JS01 - Etika dan Dampak Kecerdasan Buatan

- **Etika AI**: Bias, privasi, transparansi, akuntabilitas
- **Aspek Hukum**: Regulasi, hak cipta, tanggung jawab hukum
- **Dampak Lingkungan**: Carbon footprint, green AI, sustainable computing
- **Kasus Nyata**: Deepfake, pelanggaran hak cipta, penggunaan AI dalam hukum

### JS02 - Data Preprocessing dan ML Fundamentals

- **Data Understanding**: Eksplorasi dan analisis dataset
- **Data Cleaning**: Handling missing values, outlier detection
- **Data Transformation**: Encoding, normalization, standardization
- **Feature Engineering**: Selection, creation, dimensionality reduction
- **Preprocessing Pipeline**: End-to-end data preparation

### JS03 - Machine Learning Pipeline

### Fundamental Machine Learning

- **Data Preprocessing**: Cleaning, transformation, encoding
- **Exploratory Data Analysis (EDA)**: Statistical analysis, visualization
- **Feature Engineering**: Selection, extraction, transformation
- **Model Evaluation**: Cross-validation, metrics, performance analysis

### Algoritma Machine Learning

- **Supervised Learning**: Classification, Regression
- **Unsupervised Learning**: Clustering, Dimensionality Reduction
- **Model Selection**: Hyperparameter tuning, validation strategies

### Proyek Praktikum

- **JS01 - AI Ethics Analysis**: Analisis etika dan dampak lingkungan AI
- **JS02 - Data Preprocessing Pipeline**: Complete preprocessing untuk Wisconsin Breast Cancer
- **JS03 - Wisconsin Breast Cancer Classification**: Klasifikasi diagnosis kanker
- **Titanic Survival Prediction**: Prediksi kelangsungan hidup penumpang
- **Image Processing**: Pengolahan citra digital

## 📊 Dataset yang Digunakan

| Dataset                 | Deskripsi                             | Tipe                  | Jumlah Data | Sesi       |
| ----------------------- | ------------------------------------- | --------------------- | ----------- | ---------- |
| Wisconsin Breast Cancer | Klasifikasi diagnosis kanker payudara | Binary Classification | 569         | JS02, JS03 |
| Titanic Dataset         | Prediksi kelangsungan hidup penumpang | Binary Classification | ~800        | JS03       |
| Lenna Image             | Pengolahan citra digital standar      | Image Processing      | 1 image     | JS03       |
| AI Ethics Cases         | Kasus nyata pelanggaran etika AI      | Text Analysis         | Multiple    | JS01       |

## 🛠️ Teknologi dan Tools

### Programming Language

- **Python 3.x**: Bahasa pemrograman utama

### Libraries & Frameworks

```python
# Data Manipulation & Analysis
pandas              # Data manipulation
numpy               # Numerical computing

# Visualization
matplotlib          # Basic plotting
seaborn            # Statistical visualization
plotly             # Interactive plots

# Machine Learning
scikit-learn       # ML algorithms & tools
scipy              # Scientific computing

# Signal Processing & Bioinformatics (JS01)
pyprep             # EEG preprocessing
wandb              # ML experiment tracking
pyecg              # ECG signal analysis

# Data Preprocessing (JS02)
sklearn.preprocessing.LabelEncoder     # Categorical encoding
sklearn.preprocessing.StandardScaler   # Feature scaling

# Image Processing
PIL/Pillow         # Image manipulation
opencv-python      # Computer vision

# Environment
google.colab.files # File handling (Colab)
jupyter            # Interactive development
ipython            # Enhanced Python shell
```

### Development Environment

- **Jupyter Notebook**: Interactive development
- **VS Code**: Code editor dengan Python extension
- **Google Colab**: Cloud-based notebook (JS02 compatible)
- **Git**: Version control system

## 💻 Environment Compatibility

| Sesi | Local Jupyter | Google Colab  | VS Code | Requirements         |
| ---- | ------------- | ------------- | ------- | -------------------- |
| JS01 | ✅ Preferred  | ⚠️ Limited    | ✅ Yes  | pyprep, scipy, wandb |
| JS02 | ✅ Yes        | ✅ Optimized  | ✅ Yes  | pandas, sklearn      |
| JS03 | ✅ Preferred  | ✅ Compatible | ✅ Yes  | Full ML stack        |

**Notes:**

- JS01: Beberapa library signal processing mungkin terbatas di Colab
- JS02: Dioptimalkan untuk Google Colab dengan file upload
- JS03: Full compatibility semua environment

## 🚀 Setup dan Instalasi

### 1. Clone Repository

```bash
git clone https://github.com/TMTMPST/Machine-Learning.git
cd Machine-Learning
```

### 2. Setup Virtual Environment

```bash
# Membuat virtual environment
python -m venv venv

# Aktivasi virtual environment
# macOS/Linux:
source venv/bin/activate
# Windows:
# venv\Scripts\activate
```

### 3. Install Dependencies

```bash
# Core packages untuk semua sesi
pip install pandas numpy matplotlib seaborn scikit-learn jupyter

# Additional packages berdasarkan sesi
pip install pillow          # JS03 - Image processing
pip install pyprep scipy wandb  # JS01 - Signal processing & ML tracking

# Optional: Untuk compatibility dengan Google Colab
pip install google-colab-tools
```

### 4. Menjalankan Jupyter Notebook

```bash
jupyter notebook
```

## 📚 Cara Penggunaan

### Urutan Pembelajaran yang Disarankan

1. **JS01 - Etika AI (Foundation)**

   - Mulai dengan memahami aspek etika dan dampak AI
   - Buka `JS01/JS01_2341720112_Vidi-Joshubzky-Saviola.ipynb`
   - Pelajari kasus-kasus nyata dan solusi Green AI

2. **JS02 - Data Preprocessing (Core Skills)**

   - Pelajari fundamental preprocessing data
   - Ikuti urutan: Praktikum1 → Praktikum2 → Praktikum3 → Praktikum4
   - Selesaikan tugas utama untuk hands-on experience

3. **JS03 - ML Pipeline (Application)**
   - Terapkan skills preprocessing untuk machine learning
   - Ikuti urutan: Praktikum1 → Praktikum2 → Praktikum3 → Praktikum4
   - Kerjakan `TP.ipynb` untuk Wisconsin Breast Cancer classification

### Setup per Sesi

#### JS01 Setup

```bash
pip install pyprep scipy wandb
# Note: pyecg mungkin memerlukan versi Python tertentu
```

#### JS02 Setup

```bash
pip install pandas scikit-learn
# Untuk Google Colab, gunakan file upload
```

#### JS03 Setup

```bash
pip install pandas numpy matplotlib seaborn scikit-learn jupyter pillow
```

## 📈 Progress Pembelajaran

### JS01 - Etika dan Dampak AI

- [x] Setup environment (PyPREP, SciPy, wandb)
- [x] Analisis kasus pelanggaran etika AI
- [x] Evaluasi dampak lingkungan AI
- [x] Penelitian solusi Green AI
- [x] Diskusi regulasi dan aspek hukum AI

### JS02 - Data Preprocessing Fundamentals

- [x] Praktikum 1: Pengenalan dan eksplorasi data
- [x] Praktikum 2: Data cleaning dan handling missing values
- [x] Praktikum 3: Data transformation dan encoding
- [x] Praktikum 4: Feature engineering dan selection
- [x] Tugas Utama: Complete preprocessing pipeline
  - [x] Data loading dan eksplorasi
  - [x] Feature selection (drop unuseful columns)
  - [x] Label encoding untuk target variable
  - [x] Standardization untuk numerical features

### JS03 - Machine Learning Pipeline

- [x] Setup environment dan dependencies
- [x] Praktikum 1: Pengenalan Machine Learning
- [x] Praktikum 2: Data Preprocessing
- [x] Praktikum 3: Exploratory Data Analysis
- [x] Praktikum 4: Feature Engineering
- [x] Tugas Praktikum: Wisconsin Breast Cancer
  - [x] Pemisahan variabel
  - [x] Encoding target variable
  - [x] Standarisasi fitur
  - [x] Train-test split

---

_Repository ini dibuat untuk keperluan pembelajaran Machine Learning di tingkat perguruan tinggi._

---

**Happy Learning! 🚀**
