-- Query SQL ini bertujuan untuk mencari dan menampilkan
-- 5 negara dengan jumlah total kasus baru tertinggi akibat COVID-19
-- dari seluruh rentang waktu yang tersedia dalam dataset.
-- Negara-negara dengan nilai NULL pada kolom new_cases akan diabaikan.

SELECT
    country,                                  -- Memilih kolom 'country' untuk menampilkan nama negara.
    SUM(new_cases) AS total_new_cases_country -- Menghitung jumlah total nilai dalam kolom 'new_cases'
                                                 -- untuk setiap negara dan memberikan alias 'total_new_cases_country'
                                                 -- untuk kolom hasil perhitungan ini.
FROM
    covidexploration                             -- Menentukan tabel yang menjadi sumber data, yaitu 'covidexploration'.
WHERE
    new_cases IS NOT NULL                     -- Memfilter baris data di mana nilai pada kolom 'new_cases'
                                                 -- tidak NULL. Ini memastikan bahwa hanya negara-negara yang memiliki
                                                 -- data kasus baru yang valid (numerik) yang akan diikutsertakan
                                                 -- dalam perhitungan.
GROUP BY
    country                                  -- Mengelompokkan baris-baris dalam tabel berdasarkan nilai
                                                 -- yang unik pada kolom 'country'. Fungsi agregasi SUM()
                                                 -- akan diterapkan pada setiap kelompok negara.
ORDER BY
    total_new_cases_country DESC              -- Mengurutkan hasil query berdasarkan kolom 'total_new_cases_country'
                                                 -- secara menurun (DESC), sehingga negara dengan jumlah total
                                                 -- kasus baru tertinggi akan muncul di baris pertama.
LIMIT
    5;                                         -- Membatasi jumlah baris yang dikembalikan oleh query menjadi 5,
                                                 -- sehingga hanya 5 negara dengan jumlah total kasus baru
                                                 -- tertinggi yang akan ditampilkan.