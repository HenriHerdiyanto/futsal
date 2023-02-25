<?php
$modul = $_GET['modul'];
$act = $_GET['act'];


if ($act == 'day') {
    $id1 = $_POST['id1'];
    $harga1 = $_POST['harga1'];
    mysqli_query($koneksi, "update harga set 
									harga='$harga1'
									where id_harga='$id1'");

    echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('harga sudah di update')
    window.location.href='index.php?modul=profil';
    </SCRIPT>");
} elseif ($act == 'night') {
    $id2 = $_POST['id2'];
    $harga2 = $_POST['harga2'];
    mysqli_query($koneksi, "update harga set 
									harga='$harga2'
									where id_harga='$id2'");

    echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('harga sudah di update')
    window.location.href='index.php?modul=profil';
    </SCRIPT>");
}
