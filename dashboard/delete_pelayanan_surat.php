<?php
 include'koneksi.php';

$id = $_GET['id'];
$ambil = $koneksi->query("SELECT * FROM pelayanan_surat WHERE no_pendaftar = '$id'");

$koneksi->query("DELETE FROM pelayanan_surat WHERE no_pendaftar = '$id'");


echo"<script>alert('Pendaftar Telah Di Hapus!');</script>";
echo"<script>location='pelayanan_surat.php';</script>";

?>