# JS03 - Machine Learning Praktikum

Folder ini berisi materi dan tugas praktikum untuk sesi pembelajaran machine learning JS03.

## 📁 Struktur Folder

```
JS03/
├── Praktikum1.ipynb        # Praktikum 1 - Pengenalan Machine Learning
├── Praktikum2.ipynb        # Praktikum 2 - Data Preprocessing
├── Praktikum3.ipynb        # Praktikum 3 - Exploratory Data Analysis
├── Praktikum4.ipynb        # Praktikum 4 - Feature Engineering
├── TP.ipynb               # Tugas Praktikum - Wisconsin Breast Cancer
├── data/                  # Folder dataset
│   ├── Lenna.png         # Dataset gambar untuk image processing
│   ├── Titanic-Dataset.csv           # Dataset Titanic (original)
│   ├── Titanic-Dataset-fixed.csv    # Dataset Titanic (cleaned)
│   ├── Titanic-Dataset-selected.csv # Dataset Titanic (selected features)
│   └── wbc.csv           # Wisconsin Breast Cancer Dataset
└── README.md             # File dokumentasi ini
```

## 📚 Deskripsi Praktikum

### Praktikum 1-4

Serangkaian praktikum yang mencakup:

- **Praktikum 1**: Pengenalan konsep dasar machine learning
- **Praktikum 2**: Teknik preprocessing data
- **Praktikum 3**: Analisis data eksploratif (EDA)
- **Praktikum 4**: Feature engineering dan selection

### Tugas Praktikum (TP.ipynb)

Tugas praktikum menggunakan **Wisconsin Breast Cancer Dataset** dengan fokus pada:

1. **Data Preparation**

   - Pemisahan variabel yang dapat digunakan dan tidak dapat digunakan
   - Encoding pada kolom "diagnosis" (M/B)
   - Standarisasi fitur numerik

2. **Data Splitting**

   - Stratified split dengan rasio 80:20
   - Pembagian data latih dan data uji

3. **Dataset Information**
   - **Jumlah data**: 569 sampel
   - **Target**: Diagnosis kanker (Malignant/Benign)
   - **Features**: 30 fitur numerik yang menggambarkan karakteristik sel kanker

## 📊 Dataset

### Wisconsin Breast Cancer (wbc.csv)

Dataset untuk klasifikasi diagnosis kanker payudara:

- **Kelas**: M (Malignant) dan B (Benign)
- **Fitur**: 30 fitur numerik hasil pengukuran karakteristik sel
- **Variabel tidak berguna**: `id` (identifier) dan `Unnamed: 32` (kolom kosong)

### Titanic Dataset

Dataset klasik untuk pembelajaran machine learning:

- **Titanic-Dataset.csv**: Dataset original
- **Titanic-Dataset-fixed.csv**: Dataset yang sudah dibersihkan
- **Titanic-Dataset-selected.csv**: Dataset dengan fitur terpilih

### Lenna.png

Dataset gambar standar untuk pengolahan citra digital.

## 🛠️ Requirements

```python
pandas
numpy
matplotlib
seaborn
scikit-learn
```

## 📋 Tugas yang Dikerjakan

- [x] Pemisahan variabel yang dapat dan tidak dapat digunakan
- [x] Encoding kolom "diagnosis"
- [x] Standarisasi fitur numerik
- [x] Stratified split data (80:20)

---
