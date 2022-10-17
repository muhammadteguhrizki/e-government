<?php
    include('koneksi.php');

    $no_pendaftar = $_POST['no_pendaftar'];
    $nama = $_POST['nama'];
    $alamat = $_POST['alamat'];
    $jenis_kelamin = $_POST['jenis_kelamin'];
    $jenis_surat = $_POST['jenis_surat'];
    $no_telepon = $_POST['no_telepon'];
    $email = $_POST['email'];
    $keterangan = $_POST['keterangan'];
    $tanggal_pengajuan = $_POST['tanggal_pengajuan'];
    $progres = $_POST['progres'];

    $query = "INSERT INTO pelayanan_surat (no_pendaftar, nama, alamat, jenis_kelamin, jenis_surat, no_telepon, email, keterangan, tanggal_pengajuan, progres) VALUES ('$no_pendaftar', '$nama', '$alamat', '$jenis_kelamin', '$jenis_surat', '$no_telepon', '$email', '$keterangan', '$tanggal_pengajuan', '$progres')";
     $result = mysqli_query($koneksi, $query);

   if(!$result) {

        die("Query Error : ".mysqli_errno($koneksi)."- ".mysqli_error($koneksi));
    }else{
        header('location:pelayanan_surat.php');
    }
?>

