<?php
$a = $_POST['id_laps'];
$b = $_POST['username'];
$idadmin = $_POST['idadmin'];
$idpelanggan = $_POST['iduser'];
$idharga = $_POST['idharga'];
$pswd = md5($_POST['password']);
$namas = $_POST['nama'];
$email = $_POST['email'];
$c = $_POST['nama_klub'];
$d = $_POST['tanggals'];
$e = $_POST['jams'];
$f = $_POST['harga'];
$g = $_POST['alamat'];
$dp = $_POST['dp'];
$sisa = $_POST['sisa'];
$h = $_POST['no_telpon'];
$quz = mysqli_query($koneksi, "select * from pelanggan where username='$b'");
$dd = mysqli_fetch_array($quz);
if (!empty($dp and $sisa)) {
    if ($dd['username'] == $b) {
        $zz = mysqli_query($koneksi, "insert into pemesanan(id_admin,id_pelanggan,id_harga,id_jadwal,username,nama_klub,alamat,no_telpon,tanggal,jam,harga,dp,sisa,status)values('$idadmin','$idpelanggan','$idharga','$a','$b','$c','$g','$h','$d','$e','$f','$dp','$sisa','Pending')");
        echo "berhasil hore";
        echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('pemesanan sudah terkirim')
    window.location.href='index.php?modul=daftar_boking';
    </SCRIPT>");
    } else {
        $zz = mysqli_query($koneksi, "insert into pemesanan(id_admin,id_pelanggan,id_harga,id_jadwal,username,nama_klub,alamat,no_telpon,tanggal,jam,harga,dp,sisa,status)values('$idadmin','$idpelanggan','$idharga','$a','$b','$c','$g','$h','$d','$e','$f','$dp','$sisa','Pending')");
        $zz1 = mysqli_query($koneksi, "insert into pelanggan(username,password,nama,nama_klub,email,alamat,no_telpon)
	values('$b','$pswd','$namas','$c','$email','$g','$h')");
        echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('pemesanan sudah terkirim')
    window.location.href='index.php?modul=daftar_boking';
    </SCRIPT>");
    }
} elseif ($dp == $f) {
    if ($dd['username'] == $b) {
        $zz = mysqli_query($koneksi, "insert into pemesanan(id_admin,id_pelanggan,id_harga,id_jadwal,username,nama_klub,alamat,no_telpon,tanggal,jam,harga,dp,status)values('$idadmin','$idpelanggan','$idharga','$a','$b','$c','$g','$h','$d','$e','$f','0','Lunas')");
        echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('pemesanan sudah terkirim')
    window.location.href='index.php?modul=daftar_boking';
    </SCRIPT>");
    } else {
        $zz = mysqli_query($koneksi, "insert into pemesanan(id_admin,id_pelanggan,id_harga,id_jadwal,username,nama_klub,alamat,no_telpon,tanggal,jam,harga,dp,status)values('$idadmin','$idpelanggan','$idharga','$a','$b','$c','$g','$h','$d','$e','$f','0','Lunas')");

        $zz1 = mysqli_query($koneksi, "insert into pelanggan(username,password,nama,nama_klub,email,alamat,no_telpon)
	values('$b','$pswd','$namas','$c','$email','$g','$h')");
        echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('pemesanan sudah terkirim')
    window.location.href='index.php?modul=daftar_boking';
    </SCRIPT>");
    }
}
