-- Query SQL ini bertujuan untuk menghitung dan menampilkan
-- total jumlah vaksinasi baru (harian) akibat COVID-19 per tahun
-- yang tercatat dalam dataset 'covidexploration'.

SELECT
    EXTRACT(YEAR FROM date) AS tahun,          -- Mengekstrak bagian tahun dari kolom 'date'
                                              -- dan memberikan alias 'tahun' untuk kolom hasil.
    SUM(new_vaccinations) AS total_vaksinasi_tahunan -- Menghitung jumlah total nilai dalam kolom 'new_vaccinations'
                                              -- untuk setiap tahun yang dikelompokkan,
                                              -- dan memberikan alias 'total_vaksinasi_tahunan' untuk kolom hasil.
FROM
    covidexploration                             -- Menentukan tabel yang menjadi sumber data,
                                              -- yaitu 'covidexploration'.
WHERE
    new_vaccinations IS NOT NULL                -- Memastikan hanya baris dengan informasi vaksinasi baru yang valid dihitung.
GROUP BY
    tahun                                     -- Mengelompokkan baris-baris dalam tabel berdasarkan
                                              -- nilai tahun yang telah diekstrak. Fungsi agregasi SUM()
                                              -- akan diterapkan pada setiap kelompok tahun.
ORDER BY
    tahun                                     -- Mengurutkan hasil query berdasarkan kolom 'tahun'
                                              -- secara menaik (ascending), sehingga total vaksinasi baru
                                              -- akan ditampilkan dari tahun terkecil ke terbesar.