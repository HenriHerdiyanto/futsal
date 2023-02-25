<?php
include "../../db/config.php";


$kode = $_GET['kode'];
$dt = mysqli_query($koneksi, "select * from pelanggan where username='$kode'");
$d = mysqli_fetch_array($dt);
echo $d['id_pelanggan'] . "|" . $d['nama'] . "|" . $d['email'] . "|" . $d['nama_klub'] . "|" . $d['alamat'] . "|" . $d['no_telpon'];
