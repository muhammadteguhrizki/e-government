<?php
    include('koneksi.php');

    $judul_informasi = $_POST['judul_informasi'];
    $hari = $_POST['hari'];
    $tanggal = $_POST['tanggal'];
    $foto = $_FILES['foto']['name'];
    $isi_informasi = $_POST['isi_informasi'];

    if($foto != "") {
        $ekstensi_diperbolehkan = array('png','jpg');
        $x = explode('.', $foto);
        $ekstensi = strtolower(end($x));
        $file_tmp = $_FILES['foto']['tmp_name'];
        $angka_acak = rand(1, 999);
        $nama_gambar_baru = $angka_acak.'-'.$foto;

        if(in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
            move_uploaded_file($file_tmp, 'image/'. $nama_gambar_baru);

            $query = "INSERT INTO informasi (judul_informasi, hari, tanggal, foto, isi_informasi) VALUES ('$judul_informasi', '$hari', '$tanggal', '$nama_gambar_baru', '$isi_informasi')";
            $result = mysqli_query($koneksi, $query);


            if(!$result) {
                die("Query Error : ".mysqli_errno($koneksi)." - ".mysqli_error($koneksi));
            }else{
                echo"<script>alert('Data Berhasil Ditambahkan!');window.location='informasi.php'</script>";
            }
            
        }else{
            echo"<script>alert('Ekstensi gambar hanya bisa png dan jpg!');window.location='tambah_informasi.php'</script>";
        }
    }else{
        $query = "INSERT INTO informasi (judul_informasi, hari, tanggal, isi_informasi) VALUES ('$judul_informasi', '$hari', '$tanggal', '$isi_informasi')";
        $result = mysqli_query($koneksi, $query);


        if(!$result) {

            die("Query Error : ".mysqli_errno($koneksi)."- ".mysqli_error($koneksi));
        }else{
            echo"<script>alert('Data Berhasil Ditambahkan!');window.location='informasi.php'</script>";
        }
    }


?>

