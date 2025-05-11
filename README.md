# 📊 Analisis Data Pandemi COVID-19 dengan PostgreSQL 🐘

[![Project Status](https://img.shields.io/badge/project%20status-completed-brightgreen)](https://img.shields.io/)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Language](https://img.shields.io/badge/language-PostgreSQL-blue)](https://www.postgresql.org/)

---

## 👋 Mari Terhubung!

Tertarik dengan analisis ini atau ingin berkolaborasi lebih lanjut? Jangan ragu untuk menghubungi saya:

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Nurfatih%20Alam-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/nurfatihalam/)

* **LinkedIn:** [Nurfatih Alam](https://www.linkedin.com/in/nurfatihalam/)

---

**Proyek ini bertujuan untuk mengeksplorasi dan menganalisis data pandemi COVID-19 global menggunakan database PostgreSQL. Dengan memanfaatkan kekuatan SQL untuk query dan agregasi data, proyek ini berfokus pada identifikasi tren kasus, kematian, vaksinasi, dan wawasan relevan lainnya dari dataset COVID-19.**

## 🎯 Tujuan Proyek

* Mengimpor dan mengelola dataset COVID-19 dalam database PostgreSQL.
* Melakukan analisis data eksploratif (EDA) menggunakan query SQL.
* Mengidentifikasi tren kasus dan kematian berdasarkan lokasi geografis dan waktu.
* Menganalisis tingkat dan tren vaksinasi global.

**Catatan Penting:**

* Data COVID-19 lengkap dalam format CSV tidak disertakan dalam repositori ini karena ukurannya yang besar dan potensi pembatasan penyimpanan repositori. Data CSV lengkap digunakan dalam proses analisis, tetapi hanya hasil analisis yang relevan dan telah di-agregasi yang ditampilkan di sini.
* Struktur tabel yang digunakan dalam analisis dapat dilihat pada skrip SQL di folder `database/schema/create-table-covidexploration.sql`. Anda dapat menggunakan skrip ini sebagai referensi untuk membuat tabel yang sesuai di database lokal Anda dan menggunakan dataset COVID-19 yang tersedia secara publik.
* File SQL dalam folder `database/data/insert-data-covidexploration.sql` mungkin berisi contoh sebagian data atau instruksi umum terkait pengisian data, bukan keseluruhan dataset. Dataset lengkap yang digunakan dalam analisis disimpan secara terpisah dan tidak diunggah ke GitHub.

## 📂 Struktur Proyek

Berikut adalah struktur folder utama dalam repositori ini:

```
covid19-data-analysis/
├── database/
│   ├── schema/
│   │   └── create-table-covidexploration.sql
│   ├── data/
│   │   └── insert-data-covidexploration.sql
│   └── queries/
│       ├── top-5-countries-by-total-cases.sql
│       ├── top-5-countries-by-total-deaths.sql
│       ├── total-cases-by-continent.sql
│       ├── total-cases-by-year.sql
│       ├── total-deaths-by-continent.sql
│       ├── total-deaths-by-year.sql
│       ├── total-vaccinations-by-continent.sql
│       └── total-vaccinations-by-year.sql
└── README.md
```

## 📊 Hasil Analisis

## Total Kasus Baru COVID-19 Berdasarkan Benua (Seluruh Periode Data) 🌍📈

**Analisis Singkat:** Tabel ini menyajikan total kasus baru COVID-19 yang terakumulasi di setiap benua selama keseluruhan periode data. Asia 🌏 mencatat jumlah kasus baru tertinggi, diikuti oleh Eropa 🇪🇺 dan Amerika Utara 🇺🇸🇨🇦🇲🇽.

| Benua         | Total Kasus Baru |
|---------------|------------------|
| Asia          | 301620061        |
| Europe        | 254393781        |
| North America | 124501972        |
| South America | 69063470         |
| Oceania       | 15033101         |
| Africa        | 13066454         |

## Total Kematian Baru COVID-19 Berdasarkan Benua (Seluruh Periode Data) 💀🥀

**Analisis Singkat:** Tabel ini menunjukkan total kematian baru akibat COVID-19 yang tercatat di setiap benua selama keseluruhan periode data. Eropa 🇪🇺 memiliki jumlah kematian baru tertinggi, diikuti oleh Amerika Utara 🇺🇸🇨🇦🇲🇽 dan Asia 🌏.

| Benua         | Total Kematian Baru |
|---------------|---------------------|
| Europe        | 2108757             |
| North America | 1703851             |
| Asia          | 1637619             |
| South America | 1358718             |
| Africa        | 258297              |
| Oceania       | 33279               |

## Total Kasus Baru COVID-19 - Top 5 Agregasi Global dan Ekonomi (Seluruh Periode Data) 🌎📊

**Analisis Singkat:** Tabel ini menampilkan 5 agregasi data global dan ekonomi teratas berdasarkan jumlah total kasus baru COVID-19. Agregasi 'Dunia' 🌎 secara keseluruhan memiliki jumlah kasus baru tertinggi, diikuti oleh 'Dunia tanpa China'.

| Agregasi                                            | Total Kasus Baru |
|-------------------------------------------------------|------------------|
| World                                               | 777678839        |
| World excl. China                                   | 678297078        |
| World excl. China and South Korea                   | 643725205        |
| World excl. China, South Korea, Japan and Singapore | 606914926        |
| High-income countries                               | 429911862        |

## Total Kematian Baru COVID-19 - Top 5 Agregasi Global dan Ekonomi (Seluruh Periode Data) 💀📊

**Analisis Singkat:** Tabel ini menyajikan 5 agregasi data global dan ekonomi teratas berdasarkan jumlah total kematian baru akibat COVID-19. Agregasi 'Dunia' 🌎 secara keseluruhan memiliki jumlah kematian baru tertinggi, diikuti oleh 'Dunia tanpa China'.

| Agregasi                                            | Total Kematian Baru |
|-------------------------------------------------------|---------------------|
| World                                               | 7100521             |
| World excl. China                                   | 6978031             |
| World excl. China and South Korea                   | 6942090             |
| World excl. China, South Korea, Japan and Singapore | 6865358             |
| High-income countries                               | 3038801             |

## Total Kasus Baru COVID-19 Berdasarkan Tahun 🗓️📈

**Analisis Singkat:** Tabel ini memperlihatkan tren total kasus baru COVID-19 dari tahun 2020 hingga 2025. Jumlah kasus baru mencapai puncaknya pada tahun 2022 Peak: 2022 📉, diikuti oleh penurunan yang signifikan pada tahun-tahun berikutnya.

| Tahun | Total Kasus Baru |
|-------|------------------|
| 2020  | 610926380        |
| 2021  | 1520996192       |
| 2022  | 2997197391       |
| 2023  | 269689597        |
| 2024  | 25784383         |
| 2025  | 2669289          |

## Total Kematian Baru COVID-19 Berdasarkan Tahun 🗓️💀

**Analisis Singkat:** Tabel ini menggambarkan tren total kematian baru akibat COVID-19 dari tahun 2020 hingga 2025. Jumlah kematian baru mencapai puncaknya pada tahun 2021 Peak: 2021 📉, diikuti oleh penurunan yang konsisten pada tahun-tahun berikutnya.

| Tahun | Total Kematian Baru |
|-------|---------------------|
| 2020  | 14254909            |
| 2021  | 26175572            |
| 2022  | 9023966             |
| 2023  | 1936093             |
| 2024  | 492296              |
| 2025  | 84168               |

## Total Vaksinasi COVID-19 Berdasarkan Benua (Seluruh Periode Data) 💉🌍

**Analisis Singkat:** Tabel ini menunjukkan total kumulatif vaksinasi COVID-19 yang tercatat di setiap benua selama keseluruhan periode data. Asia 🌏 mencatat jumlah vaksinasi tertinggi secara signifikan, diikuti oleh Eropa 🇪🇺 dan Amerika Utara 🇺🇸🇨🇦🇲🇽. Oceania memiliki jumlah vaksinasi terendah.

| Benua         | Total Vaksinasi |
|---------------|-----------------|
| Asia          | 7550559963.0    |
| Europe        | 1098037354.0   |
| North America | 1003950378.0   |
| South America | 846374758.0    |
| Africa        | 117367074.0    |
| Oceania       | 74815823.0     |

## Total Vaksinasi Baru COVID-19 Berdasarkan Tahun 🗓️💉

**Analisis Singkat:** Tabel ini memperlihatkan tren total dosis vaksin baru yang diberikan setiap tahun. Jumlah vaksinasi baru mencapai puncaknya pada tahun 2022 Peak: 2022 📈, diikuti oleh penurunan pada tahun 2023 dan penurunan yang lebih drastis pada tahun 2024. Tahun 2021 juga menunjukkan jumlah vaksinasi baru yang sangat tinggi.

| Tahun | Total Vaksinasi Baru |
|-------|----------------------|
| 2020  | 399865700.79       |
| 2021  | 363039502014.73     |
| 2022  | 1484539585747.18    |
| 2023  | 160564946376.20     |
| 2024  | 8113804.75         |

## Kesimpulan Analisis Data COVID-19 🦠🌍

Berdasarkan analisis data COVID-19 yang telah dilakukan, beberapa poin penting dapat disimpulkan:

**Penyebaran Kasus:** 📈

* **Asia** 🌏 mencatat jumlah total kasus baru COVID-19 tertinggi secara signifikan dibandingkan benua lain selama keseluruhan periode data. Eropa 🇪🇺 dan Amerika Utara 🇺🇸🇨🇦🇲🇽 juga memiliki jumlah kasus yang tinggi.
* Secara global, agregasi **'Dunia'** 🌎 mencerminkan total kasus tertinggi, diikuti oleh 'Dunia tanpa China', menunjukkan dampak signifikan dari pandemi di luar China.
* Tren kasus baru menunjukkan **puncak pada tahun 2022** Peak: 2022 📉, diikuti oleh penurunan yang substansial pada tahun-tahun berikutnya, mengindikasikan potensi keberhasilan upaya mitigasi dan herd immunity.

**Dampak Kematian:** 💀🥀

* **Eropa** 🇪🇺 mencatat jumlah total kematian baru tertinggi akibat COVID-19, diikuti oleh Amerika Utara 🇺🇸🇨🇦🇲🇽 dan Asia 🌏. Hal ini mungkin mencerminkan perbedaan demografi, sistem kesehatan 🏥, atau respons terhadap pandemi di berbagai benua.
* Pola kematian global juga didominasi oleh agregasi **'Dunia'** 🌎 dan 'Dunia tanpa China'.
* Tren kematian baru mencapai **puncak pada tahun 2021** Peak: 2021 📉, dan menunjukkan penurunan yang konsisten setelahnya, kemungkinan karena kemajuan dalam pengobatan 🧪 dan vaksinasi 💉.

**Vaksinasi:** 💉💪

* Dalam hal total kumulatif vaksinasi, **Asia** 🌏 kembali memimpin secara global, diikuti oleh Eropa 🇪🇺 dan Amerika Utara 🇺🇸🇨🇦🇲🇽. Ini menunjukkan upaya vaksinasi yang intensif di benua-benua tersebut.
* Tren vaksinasi baru menunjukkan **puncak pada tahun 2022** Peak: 2022 📈, serupa dengan tren kasus, namun dengan jumlah dosis yang sangat tinggi pada tahun 2021. Penurunan terlihat pada tahun-tahun berikutnya, yang mungkin disebabkan oleh cakupan vaksinasi yang meluas dan perubahan strategi vaksinasi.

**Implikasi:** ✨🕊️🙏

Analisis ini menyoroti perbedaan signifikan dalam penyebaran kasus, dampak kematian, dan upaya vaksinasi antar benua dan sepanjang waktu. Puncak kasus dan kematian pada tahun 2021-2022 menggarisbawahi periode paling kritis dari pandemi. Penurunan kasus dan kematian setelahnya, bersamaan dengan puncak vaksinasi, mengindikasikan peran penting vaksinasi dan langkah-langkah kesehatan masyarakat 🧑‍⚕️👩‍⚕️ dalam mengendalikan pandemi. Meskipun demikian, data ini mencakup keseluruhan periode, dan penting untuk mempertimbangkan variasi regional dan tren terbaru 👀 untuk pemahaman yang lebih mendalam tentang situasi pandemi saat ini.
