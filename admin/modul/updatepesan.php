<?php
$kd_k    = $_GET['id'];

mysqli_query($koneksi, "UODATE pemesanan set status='Pending' WHERE id_pemesanan='$kd_k'");
echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('pemesanan sudah terkonfirmasi')
    window.location.href='index.php?modul=pesananbaru';
    </SCRIPT>");
