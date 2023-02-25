<?php
$id = $_POST['id'];
$futsal = $_POST['namafutsal'];
$alamat = $_POST['alamat'];
$kodepos = $_POST['kodepos'];
$fax = $_POST['fax'];
$nohp = $_POST['no_hp'];
mysqli_query($koneksi, "update profil set 
									namafutsal='$futsal',
									alamat='$alamat',
									kodepos='$kodepos',
									fax='$fax',
									no_hp='$nohp'
									where id_profil='$id'");

echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('profil dapat di update')
    window.location.href='index.php?modul=profil';
    </SCRIPT>");
