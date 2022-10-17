<?php
  include ('dashboard/koneksi.php');
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <link rel="stylesheet" href="src/css/style.css" />
    <link rel="stylesheet" href="src/css/hamburger.css" />
    <link rel="stylesheet" href="src/css/animations.css" />
    <link rel="icon" href="asset/logo_kendal.png" />
    <title>E-Government Kecamatan Weleri</title>
  </head>
  <body>
    <!-- Popup -->
         <div class="modal fade" id="popup">
          <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title">Selamat Datang!</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
                <div class="modal-body">
                  <img src="asset/update_sistem.jpg" class="card-img-top" alt="PopUp">
                </div>
             </div>
          </div>
        </div> 
    <!-- Popup akhir -->

    <!-- Navbar -->
    <section class="sticky-top" style="background-color: #043e5f;">
    <nav class="container navbar navbar-expand-lg navbar-light bg-light shadow">
        <a class="navbar-brand" href="index.php"><img src="asset/logo_kendal.png" style="width: 70px;" alt="Kecamatan Weleri" /></a>
        <button  class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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
    </nav>
    </section>
    <!-- Navbar akhir -->

    <!-- Title -->
    <div class="judul text-white" style="background-color: #043e5f;">
      <div class="container bg-primary py-2 px-5 shadow">
        <marquee><h1 class="mt-3">Sistem E-Government Pelayanan Surat Kecamatan Weleri</h1></marquee>
      </div>
    </div>
    <!-- Title akhir -->

    <!-- Corousel -->
    <div class="corousel" style="background-color: #043e5f;">
      <div class="container bg-light pt-3">
      <div id="KecamatanWeleri" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner img-thumbnail">
          <div class="carousel-item active">
            <img src="corousel/slide_01.jpg" class="d-block w-100" alt="Corousel-1">
          </div>
          <div class="carousel-item">
            <img src="corousel/slide_02.jpg" class="d-block w-100" alt="Corousel-2">
          </div>
          <div class="carousel-item">
            <img src="corousel/slide_03.jpg" class="d-block w-100" alt="Corousel-3">
          </div>
          <div class="carousel-item">
            <img src="corousel/slide_04.jpg" class="d-block w-100" alt="Corousel-4">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#KecamatanWeleri" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#KecamatanWeleri" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </div>
  </div>
    <!-- Corousel akhir -->

    <!-- Jumbotron -->
    <div class="jumbotron" style="background-color: #043e5f;">
      <div class="container bg-light pb-5">
        <div class="row text-center pt-3">
          <div class="col">
            <div class="display-6">Sambutan Camat Weleri</div>
            <img src="asset/camat_weleri.png" alt="Camat Weleri" width="200" class="img-thumbnail mt-2" />
            <p>MARWOTO, SE</p>
          </div>
        </div>
        <div class="row text-center mt-2" data-aos="fade-up" data-aos-duration="2000">
          <div class="col">
            <p>
              Assalamualaikum wr. Wb. <br />
              Salam Sejahtera, <br />
              Puji dan syukur kita panjatkan kehadirat Allah SWT, atas berkah, rahmat dan karuniaNya kita semua selalu dalam lindunganNya dalam melaksanakan dan menjalankan aktifitas kita sehari-hari. Adanya internet telah mendorong
              terjadinya perubahan mendasar pada tata laksana pemerintahan. Pemanfaatan teknologi komunikasi informasi di lingkungan instansi pemerintah dimaksudkan untuk mendukung layanan publik yang lebih efektif, efisien dan transparan
              sering disebut sebagai e-Government. Melalui e-Government diharapkan dapat terjalin komunikasi dan saling berbagi informasi kepada seluruh pihak terutama masyarakat luas dan private sector yang dapat...
          <!--Modal dialog-->
          <div class="modal fade" id="sambutancamat" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
          <div class="modal-dialog modal-xl modal-dialog-centered">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title text-center" id="exampleModalToggleLabel">Sambutan Camat Weleri</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <div class="container">
                  <div class="row text-center">
                    <div class="col">
                      <img src="asset/camat_weleri.png" alt="Camat Weleri" width="200" class="img-thumbnail" />
                      <p>MARWOTO, SE</p>
                    </div>
                  </div>
                  <div class="row justify-content-center">
                    <div class="col">
                      <p class="text-center">
                        <strong>Assalamualaikum wr. Wb.</strong> <br />
                        <strong> Salam Sejahtera,</strong>
                      </p>
                      <p>Puji dan syukur kita panjatkan kehadirat Allah SWT, atas berkah, rahmat dan karuniaNya kita semua selalu dalam lindunganNya dalam melaksanakan dan menjalankan aktifitas kita sehari-hari.</p>
                      <p>
                        Adanya internet telah mendorong terjadinya perubahan mendasar pada tata laksana pemerintahan. Pemanfaatan teknologi komunikasi informasi di lingkungan instansi pemerintah dimaksudkan untuk mendukung layanan publik yang lebih
                        efektif, efisien dan transparan sering disebut sebagai e-Government. Melalui e-Government diharapkan dapat terjalin komunikasi dan saling berbagi informasi kepada seluruh pihak terutama masyarakat luas dan private sector yang
                        dapat diakses selama 24 jam.
                      </p>
                      <p>
                        Website e-Government hadir sebagai pelopor pemanfaatan Teknologi Informasi untuk mengupayakan ketersediaan data dan layanan informasi publik yang memuat berbagai informasi tentang Kecamatan Weleri. Semoga melalui website ini
                        semua pihak yang berkepentingan terhadap data dan informasi bisa terlayani dengan maksimal, sekaligus semua potensi dan keunggulan Kecamatan Weleri bisa diinformasikan kepada banyak pihak tanpa batasan ruang dan waktu.
                      </p>
                      <p>Sekali lagi kami sangat mengapresiasi hadirnya Website e-Government, semoga membawa banyak manfaat bagi kita semua.</p>  
                      <p class="text-center"><strong>Wassalamualaikum Wr. Wb.</strong></p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
         <!--Modal dialog akhir-->
        <a class="btn btn-primary" data-bs-toggle="modal" href="#sambutancamat" role="button">Selengkapnya</a>
        </p>
          </div>
        </div>
      </div>
    </div>
    <!-- Jumbotron akhir -->

    <!-- Berita -->
    <div class="berita" style="background-color: #043e5f; font-family: Poppins;">
      <div class="container bg-light pb-5">
        <div class="row pt-5">
          <div class="col pb-3">
            <h2 class="text-center border-bottom text-truncate">Berita Sekitar Kecamatan Weleri</h2>
          </div>
        </div>
        <div class="row justify-content-center">
        <?php
        $sql = "SELECT * FROM berita ORDER BY tanggal DESC";
        $hasil = mysqli_query($koneksi, $sql);
        $berita= 1;

        $jmlBerita = mysqli_num_rows($hasil);
        if ($jmlBerita > 0) {
          while($row = mysqli_fetch_assoc($hasil)){  
            $brt = $berita;
        ?>
        <div class="col-md-3 mb-3 d-flex flex-wrap">
          <div class="card border-secondary bg-light shadow" data-aos="flip-right" data-aos-duration="3000">
            <img src="dashboard/image/<?php echo $row['foto']; ?>" class="card-img-top" alt="Berita" />
            <p class="card-text px-2 my-1 text-center fw-bold text-truncate"><?= $row['judul_berita']; ?></p>
            <div class="card-body">
              <p class="card-text text-dark text-truncate"><span><?= $row['hari']; ?></span> <?php echo date('d-m-Y', strtotime($row['tanggal'])); ?></p>
            </div>
            <div class="card-footer">
              <button class="btn btn-secondary" data-bs-toggle="modal" href="#Berita<?=$berita++?>">Selengkapnya</button>
            </div>
          </div>
          <!-- Modal -->
          <div class="modal fade" id="Berita<?php echo $brt++; ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Berita Sekitar Kecamatan Weleri</h5>
                </div>
                <div class="modal-body">
                <img src="dashboard/image/<?php echo $row['foto']; ?>" class="card-img-top" alt="Berita" />
                <p class="card-text px-2 my-1 text-center fw-bold"><?= $row['judul_berita']; ?></p>
                <p class="card-text text-dark"><span><?= $row['hari']; ?></span> <?php echo date('d-m-Y', strtotime($row['tanggal'])); ?></p>
                <p class="card-text text-primary"><?= $row['isi_berita']; ?></p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary d-flex align-items-center" data-bs-dismiss="modal"><ion-icon name="arrow-undo"></ion-icon> Kembali</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <?php
          }
        }
        ?>
      </div>
      </div>
    </div>
    <!-- Berita akhir -->

    <!-- Galeri -->
    <div class="galeri" style="background-color: #043e5f; font-family: Poppins;">
      <div class="container bg-light pb-5">
        <div class="row pt-5">
          <div class="col pb-3">
            <h2 class="text-center border-bottom text-truncate">Galeri Kecamatan Weleri</h2>
          </div>
        </div>
        <div class="row justify-content-center text-center">
          <?php
          $sql = "SELECT * FROM galeri ORDER BY id_galeri DESC";
          $hasil = mysqli_query($koneksi, $sql);
          $galeri = 1;

          $jmlGaleri = mysqli_num_rows($hasil);
          if ($jmlGaleri > 0) {
            while($row = mysqli_fetch_assoc($hasil)){ 
              $gl = $galeri; 
          ?>
          <div class="col-md-3 d-flex flex-wrap mb-3">
            <div class="card border-primary bg-light shadow" data-aos="flip-left" data-aos-duration="3000">
              <a data-bs-toggle="modal" href="#Galeri<?=$galeri++?>">
              <img src="dashboard/image/<?php echo $row['foto']; ?>" class="card-img-top img-thumbnail" alt="Galeri Foto" />
              </a>
              <div class="card-body">
                <p class="card-text text-primary"><?= $row['keterangan']; ?></p>
              </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="Galeri<?php echo $gl++; ?>" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
                <div class="modal-dialog modal-lg modal-dialog-centered d-none d-md-block">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalToggleLabel">Galeri Kecamatan Weleri</h5>
                    </div>
                    <div class="modal-body">
                    <img src="dashboard/image/<?php echo $row['foto']; ?>" class="card-img-top" alt="Galeri Foto" />
                    </div>
                    <div class="modal-footer">
                    <button type="button" class="btn btn-secondary d-flex align-items-center" data-bs-dismiss="modal"><ion-icon name="arrow-undo"></ion-icon> Kembali</button>
                </div>
                  </div>
                </div>
              </div>
          </div>
         <?php
            }
          }
         ?>
          </div>
        </div>
    </div>
    <!-- Galeri akhir -->


    <!-- Footer -->
    <section class="footer text-white" style="background-color: #043e5f; font-family: Poppins;">
      <div class="container bg-primary shadow">
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
          <div class="page-views">
            <div class="row text-center mb-2">
              <div class="col">
                <h4 class="d-flex align-items-center justify-content-center"><ion-icon name="bar-chart-outline"></ion-icon> Pengunjung</h4>
              </div>
            </div>
            <!-- Visitor counter -->
            <?php
              include "counter.php";
            ?>
            <div class="d-flex justify-content-center text-center gap-3">
              <div>
                <p>Hari ini</p>
                <span class="bg-dark py-2 px-3 rounded"><?php echo "".$hari_ini['hari_ini'].""; ?></span>
              </div>        
              <div>
                <p>Kemarin</p>
                <span class="bg-dark py-2 px-3 rounded"><?php echo "".$kemarin['kemarin'].""; ?></span>
              </div>        
              <div>
                <p>Total</p>
                <span class="bg-dark py-2 px-3 rounded"><?php echo "".$sql['total'].""; ?></span>
              </div> 
            </div>
            <div class="icon justify-content-center text-center">
              <h4>Follow Us</h4>
              <a href="https://id-id.facebook.com/Kecamatan-Weleri-109615289107316/" target="_blank"><img src="icon/fb.png" alt="Facebook" class="img-fluid rounded-circle shadow mb-1" /></a>
              <a href="https://instagram.com/kec.weleri_official?utm_medium=copy_link" target="_blank"><img src="icon/ig.png" alt="Instagram" class="img-fluid rounded-circle shadow mb-1" /></a>
              <a href="#"><img src="icon/yt.png" alt="Youtube" class="img-fluid rounded-circle shadow mb-1" /></a>
              <a href="https://twitter.com/kecamatanweleri?lang=id" target="_blank"><img src="icon/tw.png" alt="Twitter" class="img-fluid rounded-circle shadow mb-1" /></a>
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
    <script src="src/js/script.js"></script>
    <!-- Scroll Back To Top akhir -->

    <!-- Popup -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script type="text/javascript">
      $(document).ready(function () {
        setTimeout(function ()  {
          $("#popup").modal('show');

        }, 2000);
      });
    </script>
    <!-- Popup akhir -->


    <!-- Aos -->
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
      AOS.init({
        once: false,
      });
    </script>
    <!-- Aos akhir -->

  </body>
</html>
