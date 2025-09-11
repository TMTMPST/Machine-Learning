# JS02 - Data Preprocessing dan Machine Learning Fundamentals

Folder ini berisi serangkaian praktikum tentang preprocessing data dan konsep fundamental machine learning.

## 📚 Deskripsi Praktikum

### Praktikum 1: Pengenalan Data

- **Fokus**: Eksplorasi dan pemahaman dataset
- **Materi**: Data loading, basic statistics, data types
- **Output**: Pemahaman karakteristik data

### Praktikum 2: Data Cleaning

- **Fokus**: Pembersihan data dari noise dan missing values
- **Materi**: Handling missing data, outlier detection, data validation
- **Output**: Dataset yang bersih dan siap diproses

### Praktikum 3: Data Transformation

- **Fokus**: Transformasi data untuk keperluan machine learning
- **Materi**: Normalization, standardization, encoding
- **Output**: Data yang sudah ditransformasi

### Praktikum 4: Feature Engineering

- **Fokus**: Pembuatan dan seleksi fitur
- **Materi**: Feature creation, selection, dimensionality reduction
- **Output**: Fitur yang optimal untuk modeling

## 🎯 Tugas Utama: Data Preprocessing Pipeline

Tugas utama (`JS02_2341720112_Vidi-Joshubzky-Saviola.ipynb`) mencakup:

### 1. Data Loading dan Eksplorasi

```python
import pandas as pd
from sklearn.preprocessing import LabelEncoder, StandardScaler
```

### 2. Data Cleaning

- **Identifikasi kolom tidak berguna**: `'id'`, `'Unnamed: 32'`
- **Pemisahan fitur**: Useful columns vs unuseful columns
- **Validasi data quality**

### 3. Data Encoding

- **Label Encoding**: Transformasi variabel kategorikal `'diagnosis'`
- **Target variable**: Konversi M/B ke format numerik

### 4. Data Standardization

- **StandardScaler**: Normalisasi fitur numerik
- **Feature scaling**: Memastikan semua fitur dalam skala yang sama
- **Preprocessing pipeline**: Integrasi semua langkah preprocessing

## 🛠️ Libraries dan Tools

```python
# Data Manipulation
pandas              # Data manipulation dan analysis
numpy              # Numerical computing

# Preprocessing
sklearn.preprocessing.LabelEncoder      # Label encoding
sklearn.preprocessing.StandardScaler    # Feature scaling

# Environment (untuk Colab)
google.colab.files  # File upload di Google Colab
```

## 📊 Dataset yang Digunakan

### Wisconsin Breast Cancer Dataset

- **Ukuran**: 569 sampel
- **Target**: Diagnosis (M=Malignant, B=Benign)
- **Features**: 30 fitur numerik
- **Kolom tidak berguna**: `id`, `Unnamed: 32`

## 🔄 Preprocessing Pipeline

### Step 1: Data Loading

```python
df = pd.read_csv('dataset.csv')
```

### Step 2: Feature Selection

```python
cols_to_drop = ['id', 'Unnamed: 32']
useful_cols = df.drop(cols_to_drop, axis=1).columns
```

### Step 3: Label Encoding

```python
le = LabelEncoder()
df['diagnosis'] = le.fit_transform(df['diagnosis'])
```

### Step 4: Standardization

```python
scaler = StandardScaler()
numerical_cols = useful_cols.drop('diagnosis')
df[numerical_cols] = scaler.fit_transform(df[numerical_cols])
```

## 📈 Learning Outcomes

Setelah menyelesaikan JS02, mahasiswa diharapkan dapat:

### Technical Skills

- ✅ Melakukan exploratory data analysis (EDA)
- ✅ Mengidentifikasi dan menangani missing values
- ✅ Menerapkan berbagai teknik encoding
- ✅ Melakukan feature scaling dan normalization
- ✅ Membangun preprocessing pipeline yang efisien

### Conceptual Understanding

- ✅ Memahami pentingnya data quality
- ✅ Mengetahui dampak preprocessing terhadap model performance
- ✅ Memahami berbagai teknik transformasi data
- ✅ Menguasai konsep feature engineering

## 🎓 Skills Development

### Data Science Pipeline

1. **Data Understanding**: Eksplorasi dan analisis dataset
2. **Data Preparation**: Cleaning dan preprocessing
3. **Feature Engineering**: Optimasi fitur untuk modeling
4. **Quality Assurance**: Validasi hasil preprocessing

### Best Practices

- **Dokumentasi**: Setiap langkah preprocessing terdokumentasi
- **Reproducibility**: Pipeline yang dapat diulang
- **Efficiency**: Optimasi waktu dan resource
- **Validation**: Validasi setiap tahap preprocessing

## 🔍 Metodologi Pembelajaran

### Hands-on Practice

- **Interactive Notebooks**: Learning by doing
- **Real Dataset**: Menggunakan dataset nyata
- **Step-by-step Process**: Pembelajaran bertahap
- **Error Handling**: Menangani masalah umum dalam preprocessing

### Problem-Solving Approach

- **Identify**: Identifikasi masalah dalam data
- **Analyze**: Analisis penyebab dan dampak
- **Implement**: Implementasi solusi preprocessing
- **Evaluate**: Evaluasi hasil preprocessing

---

_Dirancang untuk memberikan fondasi kuat dalam data preprocessing dan persiapan data untuk machine learning._
