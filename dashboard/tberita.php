<?php
    include('koneksi.php');
    $judul_berita = $_POST['judul_berita'];
    $hari = $_POST['hari'];
    $tanggal = $_POST['tanggal'];
    $foto = $_FILES['foto']['name'];
    $isi_berita = $_POST['isi_berita'];

    if($foto != "") {
        $ekstensi_diperbolehkan = array('png','jpg');
        $x = explode('.', $foto);
        $ekstensi = strtolower(end($x));
        $file_tmp = $_FILES['foto']['tmp_name'];
        $angka_acak = rand(1, 999);
        $nama_gambar_baru = $angka_acak.'-'.$foto;

        if(in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
            move_uploaded_file($file_tmp, 'image/'. $nama_gambar_baru);
            $query = "INSERT INTO berita (judul_berita, hari, tanggal, foto, isi_berita) VALUES ('$judul_berita', '$hari', '$tanggal', '$nama_gambar_baru', '$isi_berita')";
            $result = mysqli_query($koneksi, $query);

        if(!$result) {
                die("Query Error : ".mysqli_errno($koneksi)." - ".mysqli_error($koneksi));
            }else{
                echo"<script>alert('Data Berhasil Ditambahkan!');window.location='berita.php'</script>";
            }            
            }else{
            echo"<script>alert('Ekstensi gambar hanya bisa png dan jpg!');window.location='tambah_berita.php'</script>";
            }
        }else{

        $query = "INSERT INTO berita (judul_berita, hari, tanggal, isi_berita) VALUES ('$judul_berita', '$hari', '$tanggal', '$isi_berita')";
        $result = mysqli_query($koneksi, $query);


        if(!$result) {
            die("Query Error : ".mysqli_errno($koneksi)."- ".mysqli_error($koneksi));
        }else{
            echo"<script>alert('Data Berhasil Ditambahkan!');window.location='berita.php'</script>";
        }
    }
?>