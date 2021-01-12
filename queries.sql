-- Anggota 1
SELECT penyewa.nama, pesanan.*
FROM pesanan
JOIN penyewa on penyewa.id = pesanan.id_penyewa
GROUP BY pesanan.id_penyewa;

SELECT *
FROM tagihan
ORDER BY jumlah DESC;

SELECT *
FROM pesanan p
JOIN tagihan t on t.id = p.id_tagihan; 

SELECT SUM(jumlah)
FROM tagihan;

-- Anggota 2
SELECT *
FROM penyewa
WHERE id IN (
  SELECT id_penyewa
  FROM pesanan
);

SELECT *
FROM produk
WHERE id in (
  SELECT id_produk
  FROM pesanan_produk
)

SELECT *
FROM penyewa
WHERE id in (
  SELECT pesanan.id_penyewa
  FROM pesanan
  JOIN tagihan on tagihan.id = pesanan.id_tagihan
  WHERE tagihan.jumlah > 100000
);

SELECT *
FROM produk
INNER JOIN pesanan_produk pp on pp.id_produk = produk.id;

-- Anggota 3
SELECT COUNT(1)
FROM produk
WHERE stok < 1;

SELECT AVG(jumlah)
FROM tagihan;

SELECT *
FROM pesanan
GROUP BY tanggal_mulai;

SELECT *
FROM pesanan
GROUP BY tanggal_selesai;
