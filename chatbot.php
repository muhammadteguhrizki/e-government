<?php
  include('dashboard/koneksi.php');
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet" />
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link rel="stylesheet" href="src/css/style.css" />
    <link rel="stylesheet" href="src/css/hamburger.css" />
    <link rel="stylesheet" href="src/css/animations.css" />
    <link rel="stylesheet" href="src/css/chatbotpage.css" />
    <link rel="icon" href="asset/logo_kendal.png" />
    <title>E-Government Kecamatan Weleri</title>
  </head>
  <body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top shadow">
      <div class="container">
        <a class="navbar-brand" href="index.php"><img src="asset/logo_kendal.png" style="width: 70px" alt="Kecamatan Weleri" /></a>
        <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="toggler-icon top-bar"></span>
          <span class="toggler-icon middle-bar"></span>
          <span class="toggler-icon bottom-bar"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item">
              <a class="nav-link" href="index.php">Beranda</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false"> Profil </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <li><a class="dropdown-item" href="visi_misi.php">Visi Dan Misi</a></li>
                <li><a class="dropdown-item" href="struktur_organisasi.php">Struktur Organisasi</a></li>
                <li><a class="dropdown-item" href="tupoksi.php">Tupoksi</a></li>
                <li><a class="dropdown-item" href="karyawan.php">Karyawan</a></li>
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="informasi.php">Informasi</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="chatbot.php">AIPES</a>
              </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Navbar akhir -->

    <!-- Title -->
    <div class="bg-primary text-white" style="min-height: 50px">
      <div class="container">
        <h1 class="text-center lh-base text-truncate">Pelayanan Surat Kecamatan Weleri</h1>
      </div>
    </div>
    <!-- Title akhir -->

    <!-- Chatbot -->
    <div id="chatbot">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-8 mt-2">
          <div class="alert alert-info alert-dismissible fade show" role="alert">
            <strong>Tanyakan!</strong> dahulu pada <strong>AIPES</strong> sebelum mengeklik tombol menu yang di sediakan <strong>AIPES</strong>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>
          </div>
        </div>
        <div class="row mt-4 justify-content-center">
          <div class="col-md-6 mb-5 d-flex justify-content-center align-items-center">
            <div class="wrapper">
              <div class="title d-flex justify-content-center align-items-center"><ion-icon name="logo-octocat" class="mx-2"></ion-icon> A I P E S</div>
              <div class="form">
                <div class="bot-inbox inbox">
                  <div class="icon moving-icon-animation">
                    <ion-icon name="logo-octocat"></ion-icon>
                  </div>
                  <div class="msg-header">
                    <p class="text-break" data-aos="fade-right" data-aos-delay="1000">Hallo, ada yang bisa dibantu?</p>
                    <div class="row">
                      <div class="col d-flex flex-column gap-1">
                        <a href="pelayanan-surat/pelayanan_surat.php" class="btn btn-primary" data-aos="zoom-in"  data-aos-delay="3000">Pelayanan Surat</a>
                        <a href="pelayanan-surat/check.php" class="btn btn-secondary" data-aos="zoom-in"   data-aos-delay="3000">Cek Pengajuan</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="typing-field">
                <div class="input-data">
                  <input id="text-pesan" type="text" placeholder="Ketikkan sesuatu disini..." required />
                  <button type="submit" class="d-flex align-items-center justify-content-center" id="send-btn"><ion-icon name="send"></ion-icon></button>
                </div>
              </div>
            </div>
          </div>
          <!-- Tutorial chatbot -->
          <div class="col-md-6 text-center">
            <div class="row">
              <div class="col">
                <h5>Panduan Chatbot AIPES</h5>
              </div>
            </div>
            <div class="accordion accordion-flush border" id="tentangChatbot">
              <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingOne">
                  <button class="accordion-button collapsed text-center" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">Tentang Layanan AIPES</button>
                </h2>
                <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#tentangChatbot">
                  <div class="accordion-body d-flex">
                    <ul class="list-group list-group-flush w-100 text-start">
                      <li class="list-group-item"><strong>Chatbot AIPES (Assistant Interaktif Pelayanan Surat)</strong> merupakan pengembangan aplikasi komputer yang dirancang untuk dapat berinteraksi dengan manusia melalui pesan teks, maupun suara. Chatbot telah dibekali dengan kecerdasan buatan dan pemrosesan bahasa alami / NLP yang membuatnya menjadi aplikasi komputer yang cerdas dan dapat menjawab pertanyaan yang diberikan oleh manusia. Chatbot dibangun untuk membantu manusia dalam hal pelayanan informasi / customer service, dengan topik yang sudah. Banyak chatbot yang sudah ada dibangun sesuai dengan topik dan permasalahan yang ingin dipecahkan oleh seseorang untuk keperluan pribadi ataupun keperluan bisnis lainnya.</li>
                      <li class="list-group-item"><strong>Chatbot AIPES</strong> Kecamatan Weleri dapat diakses 24 jam dalam mengajukan / melakukan pendaftaran surat perantara seperti Permohonan KK baru, Permohonan KTP Baru, Pengantar Pindah Penduduk, Permohonan Akta Kelahiran Dll.</li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="accordion accordion-flush border" id="Penggunaan">
              <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingOne">
                  <button class="accordion-button collapsed text-center" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">Cara Penggunaan AIPES</button>
                </h2>
                <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#Penggunaan">
                  <div class="accordion-body d-flex">
                    <ul class="list-group list-group-flush w-100 text-start">
                      <li class="list-group-item">Sebelum membuka percakapan dengan AIPES anda dapat menyapa terlebih dahulu, contoh ;</li>
                      <li class="list-group-item">"hay"</li>
                      <li class="list-group-item">"hallo"</li>
                      <li class="list-group-item">"pagi/siang/sore/malam"</li>
                      <li class="list-group-item">Ketikan kalimat dengan baik dan bijak dalam menggunakan Chatbot AIPES dengan kalimat yang benar.</li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="accordion accordion-flush border" id="tataCara">
              <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingOne">
                  <button class="accordion-button collapsed text-center" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTree" aria-expanded="false" aria-controls="flush-collapseTree">Tata Cara Pengajuan</button>
                </h2>
                <div id="flush-collapseTree" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#tataCara">
                  <div class="accordion-body d-flex">
                    <ul class="list-group list-group-flush w-100 text-start fw-bold">
                      <li class="list-group-item">1. Dalam melakukan pengajuan surat perantara anda dapat mengecek syarat-syarat yang harus dilengkapi terlebih dahulu sebelum melakukan pendaftaran ke bagian tombol "Pelayanan Surat" di AIPES. kata kunci pengajuan ;</li>
                      <li class="list-group-item">"Permohonan KK Baru"</li>
                      <li class="list-group-item">"Permohonan Perpanjangan KK"</li>
                      <li class="list-group-item">"Permohonan Penggantian KK"</li>
                      <li class="list-group-item">"Permohonan KTP Baru"</li>
                      <li class="list-group-item">"Permohonan Penggantian KTP"</li>
                      <li class="list-group-item">"Pengantar Pindah Penduduk"</li>
                      <li class="list-group-item">"Permohonan Akta Kelahiran"</li>
                      <li class="list-group-item">"Pengantar Nikah"</li>
                      <li class="list-group-item">"Pengantar Talak/Cerai"</li>
                      <li class="list-group-item">"Permohonan SKCK"</li>
                      <li class="list-group-item">"Permohonan Izin Kegiatan/Keramaian"</li>
                      <li class="list-group-item">"Pengesahan SKTM/Surat Keterangan Tidak Mampu"</li>
                      <li class="list-group-item">2. lengkapi syarat-syarat sesuai arahan AIPES, jika sudah lengkap anda dapat mengeklik tombol "Pelayanan Surat" untuk mengisi form pengajuan.</li>
                      <li class="list-group-item">3. Simpan no.pendaftaran / no.pengajuan anda untuk mengecek status pengajuan dibagian tombol AIPES "Cek Pengajuan".</li>
                      <li class="list-group-item">4. Pengajuan status anda sudah "Proses", anda dapat datang ke kantor dengan membawah berkas syarat yang sudah lengkap dan menyebutkan no.pendaftaran dibagian loket pelayanan umum, agar segera mendapatkan formulir pengisian lanjutan.</li>
                      <li class="list-group-item text-center fst-italic fw-normal text-danger">Ikuti langkah diatas dengan benar agar pengajuan anda dapat segera di proses*</li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="accordion accordion-flush border" id="keterangan">
              <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingOne">
                  <button class="accordion-button collapsed text-center" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">Keterangan Status Pengajuan</button>
                </h2>
                <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#keterangan">
                  <div class="accordion-body d-flex">
                    <ul class="list-group list-group-flush w-100 text-start">
                      <li class="list-group-item"><strong>"Kosong"</strong> : Pengajuan belum di tanggapi.</li>                   
                      <li class="list-group-item"><strong>"Belum Selesai"</strong> : Pengajuan terkendala/syarat belum lengkap.</li>                   
                      <li class="list-group-item"><strong>"Proses"</strong> : Anda dapat langsung menyerahkan berkas persyaratan ke kantor agar dapat mengisi formulir pengajuan lanjut.</li>                   
                      <li class="list-group-item"><strong>"Selesai"</strong> : Pengajuan pembuatan surat anda sudah dapat diambil di kantor.</li>
                      <li class="list-group-item text-center fst-italic fw-normal text-danger">Setiap 1 bulan
                        sekali data pengajuan akan di hapus dari daftar sistem*</li>                   
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Tutorial chatbot akhir -->
        </div>
      </div>
    </div>
    <!-- Chatbot akhir -->


    <!-- Footer -->
    <section class="footer bg-primary text-white" style="margin-top: 5rem; font-family: Poppins;">
      <div class="container">
        <div class="row text-center">
          <div class="col mt-3">
            <h2>Link Terkait</h2>
          </div>
        </div>
        <div class="row justify-content-between mt-3">
          <div class="col-md-4 mb-3">
            <h4 class="text-center d-flex align-items-center justify-content-center"><ion-icon name="map-outline"></ion-icon> Alamat</h4>
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.3105576657294!2d110.06607971477304!3d-6.972639894962736!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa55f13f7bb267c2a!2sKantor%20Kecamatan%20Weleri!5e0!3m2!1sid!2sid!4v1635652862560!5m2!1sid!2sid"
              class="img-thumbnail"
              width="400"
              height="400"
              style="border: 0"
              allowfullscreen=""
              loading="lazy"
            ></iframe>
            <p>Kantor Kecamatan Weleri <ion-icon name="location-outline"></ion-icon></p>
            <p>Jl.Soekarno-Hatta No.277 Weleri</p>
            <p>(0294)-641447 <ion-icon name="call"></ion-icon></p>
          </div>
          <div class="col-md-4 mb-3 text-center">
            <h4 class="d-flex align-items-center justify-content-center mb-3"><ion-icon name="alarm-outline"></ion-icon> Pelayan Dinas</h4>
            <p>Senin - Kamis : Jam 07.00-15.30</p>
            <p>Jumat : Jam 07.00-10.30</p>
          </div>
          <div class="col-md-4 mb-3">
            <h4 class="text-center d-none d-md-block">Follow Us</h4>
            <div class="icon justify-content-center text-center mb-3">
              <h4 class="text-center d-block d-md-none">Follow Us</h4>
              <a href="https://id-id.facebook.com/Kecamatan-Weleri-109615289107316/" target="_blank"><img src="icon/fb.png" alt="Facebook" class="img-fluid rounded-circle shadow" /></a>
              <a href="https://instagram.com/kec.weleri_official?utm_medium=copy_link" target="_blank"><img src="icon/ig.png" alt="Instagram" class="img-fluid rounded-circle shadow" /></a>
              <a href="#"><img src="icon/yt.png" alt="Youtube" class="img-fluid rounded-circle shadow" /></a>
              <a href="https://twitter.com/kecamatanweleri?lang=id" target="_blank"><img src="icon/tw.png" alt="Twitter" class="img-fluid rounded-circle shadow" /></a>
            </div>
          </div>
        </div>
        <div class="footer text-center mt-3 pb-3">
          <small>&copy 2022 Kecamatan Weleri.</small>
        </div>
      </div>
    </section>
    <!-- Footer akhir-->

    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

    <!-- Scroll Back To Top -->
    <a href="#" class="back-to-top"><ion-icon name="chevron-up-circle"></ion-icon></a>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="js/script.js"></script>
    <!-- Scroll Back To Top akhir -->

    <!-- chatbot ajax -->
    <script>
      $(document).ready(function () {
        // jika tombol kirim diklik
        $('#send-btn').on('click', function () {
          // ambil input pesan
          $pesan = $('#text-pesan').val();
          // tampung pesan ke variabel msg
          $msg = '<div class ="user-inbox inbox"><div class="msg-header"><p class="text-break">' + $pesan + '</p></div></div>';
          // masukan ke form chat
          $(".form").append($msg);
          // kosong setelah menginput pesan
          $("#text-pesan").val('');
          // persiapan ajax
          $.ajax({
            url : 'pesan.php',
            type : 'POST',
            data : 'isi_pesan=' + $pesan,
            success : function(result) {
              // jika sukses ambil data ke variabel balasan
              $balasan = '<div class="bot-inbox inbox"><div class="icon moving-icon-animation"><ion-icon name="logo-octocat"></ion-icon></div><div class="msg-header"><p class="text-break">'+ result +'</p></div></div>';
              // masukan ke form chat
              $('.form').append($balasan);
              // buat form otomatis scroll ke bawah jika ada pesan baru
              $(".form").scrollTop($(".form")[0].scrollHeight);
            }
          });
        });
      })
    </script>
    <!-- chatbot ajax akhir -->

 <!-- Aos -->
 <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
      AOS.init({
        once: true,
      });
    </script>
    <!-- Aos akhir -->

  </body>
</html>