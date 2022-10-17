<?php
// koneksi ke database
include('dashboard/koneksi.php');

// ambil data ajax
$pesan = mysqli_real_escape_string($koneksi, $_POST['isi_pesan']);
//isi pesan ke dalam tabel
$cek_data = mysqli_query($koneksi, "SELECT jawaban FROM chatbot WHERE pertanyaan LIKE '%$pesan%' ");

// jika pertanyaa atau data ditambahkan, maka tampilkan jawaban
if (mysqli_num_rows($cek_data) > 0) {
    // hasil query tampung kedalam variabel data
    $data = mysqli_fetch_assoc($cek_data);
    // tampilkan jawaban ke dalam variabel untuk di kirim kembali ke ajax
    $balasan = $data['jawaban'];
    echo $balasan;
} else {
    echo "Maaf, AIPES tidak tau pertanyaan yang kamu maksud <strong>:(</strong>
            <br>
            Tulis pertanyaan dengan kalimat yang benar ya, agar AIPES memahami apa yang kamu maksud..";
    }
?>