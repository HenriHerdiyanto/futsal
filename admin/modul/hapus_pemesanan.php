<?php

$d = $_GET['id'];
mysqli_query($koneksi, "delete from pemesanan where id_pemesanan='$d'");
echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('Data  Telah di hapus')
    window.location.href='index.php?modul=daftar_boking';
    </SCRIPT>");
