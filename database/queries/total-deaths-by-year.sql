-- Query SQL ini bertujuan untuk menghitung dan menampilkan
-- total jumlah kematian akibat COVID-19 per tahun
-- yang tercatat dalam dataset 'covidexploration'.

SELECT
    EXTRACT(YEAR FROM date) AS tahun,  -- Mengekstrak bagian tahun dari kolom 'date'
                                       -- dan memberikan alias 'tahun' untuk kolom hasil.
    SUM(new_deaths) AS total_kematian  -- Menghitung jumlah total nilai dalam kolom 'total_deaths'
                                         -- untuk setiap tahun yang dikelompokkan,
                                         -- dan memberikan alias 'total_kematian' untuk kolom hasil.
FROM
    covidexploration                     -- Menentukan tabel yang menjadi sumber data,
                                       -- yaitu 'covidexploration'.
GROUP BY
    tahun                               -- Mengelompokkan baris-baris dalam tabel berdasarkan
                                       -- nilai tahun yang telah diekstrak. Fungsi agregasi SUM()
                                       -- akan diterapkan pada setiap kelompok tahun.
ORDER BY
    tahun                               -- Mengurutkan hasil query berdasarkan kolom 'tahun'
                                       -- secara menaik (ascending), sehingga total kematian
                                       -- akan ditampilkan dari tahun terkecil ke terbesar.