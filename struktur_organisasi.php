<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="src/css/style.css" />
    <link rel="stylesheet" href="src/css/hamburger.css" />
    <link rel="stylesheet" href="src/css/animations.css" />
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
        <h1 class="text-center lh-base text-truncate">Struktur Organisasi Kecamatan Weleri</h1>
      </div>
    </div>
    <!-- Title akhir -->

    <!-- Struktur Organisasi -->
    <div class="strukturorganisasi">
      <div class="container">
        <div class="row justify-content-center text-center mt-5">
          <div class="col">
            <div class="card border">
              <img src="dokumen/struktur.png" alt="Struktur Organisasi" />
            </div>
          </div>
          <div class="display-8 mt-3">
            Periode 2021
          </div>
        </div>
      </div>
    </div>
    <!-- Struktur Organisasi akhir -->

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
  </body>
</html>
