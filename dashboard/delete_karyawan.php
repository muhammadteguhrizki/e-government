<?php
 include'koneksi.php';

$id = $_GET['id'];

$ambil = $koneksi->query("SELECT * FROM karyawan WHERE id = '$id'");
$d  = $ambil->fetch_assoc();


$foto = $d['foto'];
if(file_exists("karyawan/$foto")) {

    // menggunakan unlink
    unlink("karyawan/$foto");
}
$koneksi->query("DELETE FROM karyawan WHERE id = '$id'");


echo"<script>alert('Karyawan Telah Di Hapus!');</script>";
echo"<script>location='karyawan.php';</script>";

?>