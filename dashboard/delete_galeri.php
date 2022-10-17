<?php
 include'koneksi.php';

 $id_galeri = $_GET['id'];

$ambil = $koneksi->query("SELECT * FROM galeri WHERE id_galeri = '$id_galeri'");
$d  = $ambil->fetch_assoc();


$foto = $d['foto'];
if(file_exists("image/$foto")) {

    // menggunakan unlink
    unlink("image/$foto");
}
$koneksi->query("DELETE FROM galeri WHERE id_galeri = '$id_galeri'");


echo"<script>alert('Foto Galeri Telah Di Hapus!');</script>";
echo"<script>location='galeri.php';</script>";

?>