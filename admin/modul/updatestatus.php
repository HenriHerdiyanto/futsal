<?php
$kd_k    = $_POST['id'];
mysqlI_query($koneksi, "Update pemesanan set dp='0',sisa='0',status='Lunas' WHERE id_pemesanan='$kd_k'");
echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('pemesanan sudah dibayar')
    window.location.href='index.php?modul=daftar_boking';
    </SCRIPT>");
