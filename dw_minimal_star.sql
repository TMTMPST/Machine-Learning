
-- =============================================================
-- Minimal Star Schema DW: 1 Fact + 2 Dimensions
-- Database : dw_minimal_star
-- Tables   : dim_waktu, dim_produk, fact_penjualan
-- =============================================================

-- Create DB
CREATE DATABASE IF NOT EXISTS dw_minimal_star
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE dw_minimal_star;

-- =======================
-- DIMENSI: WAKTU
-- =======================
DROP TABLE IF EXISTS dim_waktu;
CREATE TABLE dim_waktu (
  DateKey     INT PRIMARY KEY,         -- format: YYYYMMDD
  Tanggal     DATE NOT NULL,
  Hari        TINYINT,                 -- 1=Senin ... 7=Minggu
  Bulan       TINYINT,
  NamaBulan   VARCHAR(15),
  Kuartal     TINYINT,
  Tahun       SMALLINT,
  MingguKe    TINYINT,
  IsAkhirPekan TINYINT                 -- 1=Sabtu/Minggu
);

-- Contoh data 7 hari
INSERT INTO dim_waktu (DateKey, Tanggal, Hari, Bulan, NamaBulan, Kuartal, Tahun, MingguKe, IsAkhirPekan) VALUES
(20251001, '2025-10-01', 3, 10, 'Oktober', 4, 2025, 40, 0),
(20251002, '2025-10-02', 4, 10, 'Oktober', 4, 2025, 40, 0),
(20251003, '2025-10-03', 5, 10, 'Oktober', 4, 2025, 40, 0),
(20251004, '2025-10-04', 6, 10, 'Oktober', 4, 2025, 40, 1),
(20251005, '2025-10-05', 7, 10, 'Oktober', 4, 2025, 40, 1),
(20251006, '2025-10-06', 1, 10, 'Oktober', 4, 2025, 41, 0),
(20251007, '2025-10-07', 2, 10, 'Oktober', 4, 2025, 41, 0);

-- =======================
-- DIMENSI: PRODUK
-- =======================
DROP TABLE IF EXISTS dim_produk;
CREATE TABLE dim_produk (
  ProdukKey     INT AUTO_INCREMENT PRIMARY KEY,
  ProdukID_Nat  INT,
  NamaProduk    VARCHAR(120) NOT NULL,
  Kategori      VARCHAR(80),
  Brand         VARCHAR(80),
  Satuan        VARCHAR(20)
);

-- Contoh data produk
INSERT INTO dim_produk (ProdukID_Nat, NamaProduk, Kategori, Brand, Satuan) VALUES
(1001, 'Gula 1kg',        'Sembako', 'ManisKu',   'pak'),
(1002, 'Minyak 1L',       'Sembako', 'GurihTani', 'botol'),
(1003, 'Beras Premium 5kg','Sembako', 'PadiJaya', 'karung'),
(1004, 'Teh Celup 25pcs', 'Minuman', 'TehNus',   'kotak'),
(1005, 'Kopi 200g',       'Minuman', 'Aroma',    'pcs'),
(1006, 'Susu UHT 1L',     'Minuman', 'MooMilk',  'kotak');

-- =======================
-- FAKTA: PENJUALAN
-- =======================
DROP TABLE IF EXISTS fact_penjualan;
CREATE TABLE fact_penjualan (
  FactID     BIGINT AUTO_INCREMENT PRIMARY KEY,
  DateKey    INT NOT NULL,
  ProdukKey  INT NOT NULL,
  Qty        INT NOT NULL,
  Harga      DECIMAL(12,2) NOT NULL,
  Diskon     DECIMAL(12,2) DEFAULT 0,
  Total      DECIMAL(12,2) AS (Qty * Harga - Diskon) STORED,
  INDEX idx_fp_date (DateKey),
  INDEX idx_fp_produk (ProdukKey),
  CONSTRAINT fk_fp_date   FOREIGN KEY (DateKey)   REFERENCES dim_waktu(DateKey),
  CONSTRAINT fk_fp_produk FOREIGN KEY (ProdukKey) REFERENCES dim_produk(ProdukKey)
);

-- Contoh transaksi menggunakan subquery untuk mendapatkan ProdukKey
INSERT INTO fact_penjualan (DateKey, ProdukKey, Qty, Harga, Diskon)
SELECT 20251001, p.ProdukKey, 3, 15000, 0 FROM dim_produk p WHERE p.NamaProduk='Gula 1kg';
INSERT INTO fact_penjualan (DateKey, ProdukKey, Qty, Harga, Diskon)
SELECT 20251001, p.ProdukKey, 2, 32000, 0 FROM dim_produk p WHERE p.NamaProduk='Minyak 1L';
INSERT INTO fact_penjualan (DateKey, ProdukKey, Qty, Harga, Diskon)
SELECT 20251002, p.ProdukKey, 1, 125000, 5000 FROM dim_produk p WHERE p.NamaProduk='Beras Premium 5kg';
INSERT INTO fact_penjualan (DateKey, ProdukKey, Qty, Harga, Diskon)
SELECT 20251003, p.ProdukKey, 4, 12000, 0 FROM dim_produk p WHERE p.NamaProduk='Teh Celup 25pcs';
INSERT INTO fact_penjualan (DateKey, ProdukKey, Qty, Harga, Diskon)
SELECT 20251004, p.ProdukKey, 2, 38000, 2000 FROM dim_produk p WHERE p.NamaProduk='Kopi 200g';
INSERT INTO fact_penjualan (DateKey, ProdukKey, Qty, Harga, Diskon)
SELECT 20251005, p.ProdukKey, 5, 18000, 0 FROM dim_produk p WHERE p.NamaProduk='Susu UHT 1L';
INSERT INTO fact_penjualan (DateKey, ProdukKey, Qty, Harga, Diskon)
SELECT 20251006, p.ProdukKey, 1, 15000, 0 FROM dim_produk p WHERE p.NamaProduk='Gula 1kg';
INSERT INTO fact_penjualan (DateKey, ProdukKey, Qty, Harga, Diskon)
SELECT 20251007, p.ProdukKey, 1, 32000, 0 FROM dim_produk p WHERE p.NamaProduk='Minyak 1L';

-- =======================
-- Contoh Query Analitik
-- =======================

-- A) Total penjualan (Rp) per hari
SELECT w.Tanggal, SUM(f.Total) AS TotalPenjualan
FROM fact_penjualan f
JOIN dim_waktu w ON f.DateKey = w.DateKey
GROUP BY w.Tanggal
ORDER BY w.Tanggal;

-- B) Top produk berdasarkan Qty
SELECT p.NamaProduk, SUM(f.Qty) AS QtyTotal
FROM fact_penjualan f
JOIN dim_produk p ON f.ProdukKey = p.ProdukKey
GROUP BY p.NamaProduk
ORDER BY QtyTotal DESC;

-- C) Total per kategori dan bulan
SELECT w.Tahun, w.Bulan, w.NamaBulan, p.Kategori, SUM(f.Total) AS TotalKategori
FROM fact_penjualan f
JOIN dim_waktu w ON f.DateKey = w.DateKey
JOIN dim_produk p ON f.ProdukKey = p.ProdukKey
GROUP BY w.Tahun, w.Bulan, w.NamaBulan, p.Kategori
ORDER BY w.Tahun, w.Bulan, p.Kategori;
