//Bu dosyada veri tabanı bağlantısı kuruldu
const { Pool } = require('pg');

// Google Cloud PostgreSQL veritabanı bağlantı bilgileri
const config = {
  user: 'postgres',
  password: 'bbpgoogle+',
  database: 'donationDb',
  host: '35.234.93.155', // Örn: 34.72.123.456
  port: 5432, // PostgreSQL varsayılan bağlantı noktası
};

// Veritabanı havuzunu oluşturun
const pool = new Pool(config);

pool.query('SELECT * FROM computer', (err, res) => {
    if (err) {
      console.error(err);
      return;
    }
    console.log(res.rows);
});


