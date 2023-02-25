<?php
$host = 'localhost';
$user = 'root';
$password = '';
$db = 'futsal';
error_reporting(0);
$koneksi = mysqli_connect($host, $user, $password, $db);

define('VALIDASI', 1);
include "fungsigambar.php";


$zz = mysqli_fetch_array(mysqli_query($koneksi, "Select * from profil where id_profil='1'"));
$namaprofil = $zz['namafutsal'];
$alamatprofil = $zz['alamat'];
$kodeposprofil = $zz['kodepos'];
$faxprofil = $zz['fax'];
$no_telponprofil = $zz['no_hp'];
