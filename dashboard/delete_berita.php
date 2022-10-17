<?php
 include'koneksi.php';

 $id = $_GET['id'];

$ambil = $koneksi->query("SELECT * FROM berita WHERE id = '$id'");
$d  = $ambil->fetch_assoc();


$foto = $d['foto'];
if(file_exists("image/$foto")) {

    // menggunakan unlink
    unlink("image/$foto");
}
$koneksi->query("DELETE FROM berita WHERE id = '$id'");


echo"<script>alert('Berita Telah Di Hapus!');</script>";
echo"<script>location='berita.php';</script>";

?>