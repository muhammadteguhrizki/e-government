<?php
    include('koneksi.php');

    $foto = $_FILES['foto']['name'];
    $keterangan = $_POST['keterangan'];

    if($foto != "") {
        $ekstensi_diperbolehkan = array('png','jpg');
        $x = explode('.', $foto);
        $ekstensi = strtolower(end($x));
        $file_tmp = $_FILES['foto']['tmp_name'];
        $angka_acak = rand(1, 999);
        $nama_gambar_baru = $angka_acak.'-'.$foto;

        if(in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
            move_uploaded_file($file_tmp, 'image/'. $nama_gambar_baru);

            $query = "INSERT INTO galeri (foto, keterangan) VALUES ('$nama_gambar_baru', '$keterangan')";
            $result = mysqli_query($koneksi, $query);


            if(!$result) {
                die("Query Error : ".mysqli_errno($koneksi)." - ".mysqli_error($koneksi));
            }else{
                echo"<script>alert('Data Berhasil Ditambahkan!');window.location='galeri.php'</script>";
            }
            
        }else{
            echo"<script>alert('Ekstensi gambar hanya bisa png dan jpg!');window.location='tambah_galeri.php'</script>";
        }
    }else{
        $query = "INSERT INTO galeri (keterangan) VALUES ('$keterangan')";
        $result = mysqli_query($koneksi, $query);


        if(!$result) {

            die("Query Error : ".mysqli_errno($koneksi)."- ".mysqli_error($koneksi));
        }else{
            echo"<script>alert('Data Berhasil Ditambahkan!');window.location='galeri.php'</script>";
        }
    }


?>

