-- Query SQL ini bertujuan untuk mencari dan menampilkan
-- jumlah total kasus baru (terinfeksi) akibat COVID-19 untuk setiap benua,
-- diurutkan dari yang tertinggi hingga terendah.

SELECT
    continent,                                  -- Memilih kolom 'continent' untuk menampilkan nama benua.
    SUM(new_cases) AS total_new_cases_continent -- Menghitung jumlah total nilai dalam kolom 'new_cases'
                                                 -- untuk setiap benua dan memberikan alias 'total_new_cases_continent'
                                                 -- untuk kolom hasil perhitungan ini.
FROM
    covidexploration                             -- Menentukan tabel yang menjadi sumber data, yaitu 'covidexploration'.
WHERE
    continent IS NOT NULL                        -- Memfilter baris data di mana nilai pada kolom 'continent'
                                                 -- tidak NULL. Ini memastikan hanya benua yang terdefinisi
                                                 -- yang akan diikutsertakan dalam perhitungan.
GROUP BY
    continent                                  -- Mengelompokkan baris-baris dalam tabel berdasarkan nilai
                                                 -- yang unik pada kolom 'continent'. Fungsi agregasi SUM()
                                                 -- akan diterapkan pada setiap kelompok benua.
ORDER BY
    total_new_cases_continent DESC              -- Mengurutkan hasil query berdasarkan kolom 'total_new_cases_continent'
                                                 -- secara menurun (DESC), sehingga benua dengan total kasus baru
                                                 -- tertinggi akan muncul di baris pertama.