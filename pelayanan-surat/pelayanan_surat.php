<?php
  include'koneksi.php';
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet" />
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <link rel="stylesheet" href="../src/css/style.css" />
    <link rel="stylesheet" href="../src/css/hamburger.css" />
    <link rel="icon" href="../asset/logo_kendal.png" />
    <title>E-Government Kecamatan Weleri</title>
  </head>
  <body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top shadow">
      <div class="container">
        <a class="navbar-brand" href="../index.php"><img src="../asset/logo_kendal.png" style="width: 70px" alt="Kecamatan Weleri" /></a>
        <a href="../chatbot.php" class="fs-1"><ion-icon name="exit-outline"></ion-icon></a>
      </div>
    </nav>
    <!-- Navbar akhir -->

    <!-- Title -->
    <div class="bg-primary text-white" style="min-height: 50px">
      <div class="container">
        <h1 class="text-center lh-base text-truncate">Pelayanan Surat</h1>
      </div>
    </div>
    <!-- Title akhir -->

    <!-- form pelayanan -->
    <?php
      mt_rand();
    ?>
    <div class="layanan">
      <div class="container">
        <div class="row justify-content-center mt-5">
          <div class="col">
            <h2 class="text-center">Form Pendaftaran Pengantar Surat</h2>
          </div>
          <div class="row justify-content-center mb-3 mt-3">
            <div class="col-lg-6">
              <div class="card p-3 bg-light border-4">
                <form name='form-pendaftaran' method="POST" action="ajukan.php" enctype="multipart/form-data">
                  <input type="hidden" class="form-control" id="progres" aria-describedby="name" name="progres" value="" />
                  <div class="mb-3">
                    <label for="name" class="form-label">Nama <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="nama" aria-describedby="name" name="nama" placeholder="Nama Lengkap" required />
                  </div>
                  <div class="mb-3">
                    <label for="name" class="form-label">Alamat <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="alamat" aria-describedby="name" name="alamat" placeholder="Alamat Lengkap" required/>
                  </div>
                  <div class="mb-3">
                    <label for="name" class="form-label">Jenis Kelamin <span class="text-danger">*</span></label>
                    <div class="d-flex gap-3">
                      <div class="form-check">
                      <input class="form-check-input" type="radio" name="jenis_kelamin" value="Laki-Laki" id="Laki-Laki" required>
                        <label class="form-check-label" for="Laki-laki">Laki-laki</label>
                      </div>
                      <div class="form-check">
                      <input class="form-check-input" type="radio" name="jenis_kelamin" value="Perempuan" id="Perempuan" required>
                        <label class="form-check-label" for="Perempuan">Perempuan</label>
                      </div>
                    </div>
                  </div>
                  <div class="mb-3">
                  <label for="name" class="form-label">Jenis Surat <span class="text-danger">*</span></label>
                    <select id="namaSurat" class="form-select" aria-label="Default select example" name="jenis_surat" required>
                      <option selected>-- Pilih surat pengantar --</option>
                      <option value="Permohonan KK baru">Permohonan KK baru</option>
                      <option value="Permohonan Perpanjanngan KK">Permohonan Perpanjangan KK</option>
                      <option value="Permohonan Penggantian KK">Permohonan Penggantian KK</option>
                      <option value="Permohonan KTP Baru">Permohonan KTP Baru</option>
                      <option value="Permohonan Penggantian KTP">Permohonan Penggantian KTP</option>
                      <option value="Pengantar Pindah Penduduk">Pengantar Pindah Penduduk</option>
                      <option value="Permohonan Akta Kelahiran">Permohonan Akta Kelahiran</option>
                      <option value="Pengantar Nikah">Pengantar Nikah</option>
                      <option value="Pengantar Talak/Cerai">Pengantar Talak/Cerai</option>
                      <option value="Permohonan SKCK">Permohonan SKCK</option>
                      <option value="Permohonan Izin Kegiatan/Keramaian">Permohonan Izin Kegiatan/Keramaian</option>
                      <option value="Pengesahan SKTM/Surat Keterangan Tidak Mampu">Pengesahan SKTM/Surat Keterangan Tidak Mampu</option>
                    </select>
                  </div>
                  <div class="mb-3">
                    <label for="name" class="form-label">No Telepon / WhatsApp <span class="text-danger">*</span></label>
                    <input type="number" class="form-control" id="noTelepon" aria-describedby="name" name="no_telepon" placeholder="08xxxxxxxxxx" required/>
                  </div>
                  <div class="mb-3">
                    <label for="name" class="form-label">Email <span class="text-danger">*</span></label>
                    <input type="email" class="form-control" id="email" aria-describedby="email" name="email" placeholder="abc@gmail.com" required/>
                  </div>
                  <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Keterangan Syarat Berkas <span class="text-danger">*</span></label>
                    <textarea class="form-control" id="keterangan" rows="2" name="keterangan" placeholder="persyaratan sudah lengkap? , jika belum silahkan cek syarat - syarat pengajuan di bagian 'Tata Cara Pengajuan'" required></textarea>
                  </div>
                  <div class="mb-3">
                    <label for="name" class="form-label">Tanggal Pengajuan <span class="text-danger">*</span></label>
                    <input type="date" class="form-control" id="tanggalPengajuan" aria-describedby="name" name="tanggal_pengajuan" required/>
                  </div>
                  <button type="submit" class="btn btn-success btn-kirim">Ajukan</button>
                  <button class="btn btn-success btn-loading d-none" type="button" disabled>
                    <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                    Proses...
                  </button>
                  <a href="../chatbot.php" class="btn btn-danger float-end">Batal</a>
                </div>
                <div class="alert alert-success alert-dismissible fade show d-none my-alert mt-2" role="alert">
                  <strong>Pendaftaran Diterima!</strong> Harap SIMPAN No.Pendaftaran Anda : <input readonly class="border-0 text-success fw-bold" style="background-color: #d1e7dd;" type="text" name="no_pendaftar" value="SRT<?php echo mt_rand(1000,99999999); ?>"> 
                  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- form pelayanan akhir -->

    <!-- Footer -->
    <section class="footer bg-primary text-white" style="margin-top: 5rem">
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
              <a href="https://id-id.facebook.com/Kecamatan-Weleri-109615289107316/" target="_blank"><img src="../icon/fb.png" alt="Facebook" class="img-fluid rounded-circle shadow mb-1" /></a>
              <a href="https://instagram.com/kec.weleri_official?utm_medium=copy_link" target="_blank"><img src="../icon/ig.png" alt="Instagram" class="img-fluid rounded-circle shadow mb-1" /></a>
              <a href="#"><img src="../icon/yt.png" alt="Youtube" class="img-fluid rounded-circle shadow mb-1" /></a>
              <a href="https://twitter.com/kecamatanweleri?lang=id" target="_blank"><img src="../icon/tw.png" alt="Twitter" class="img-fluid rounded-circle shadow mb-1" /></a>
            </div>
          </div>
        </div>
        <div class="footer text-center mt-3 pb-3">
          <small>&copy 2022 Kecamatan Weleri.</small>
        </div>
      </div>
    </section>
    <!-- Footer akhir-->

    <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>

    <!-- Form pelayanan -->
    <script>
      const scriptURL = 'ajukan.php';
      const form = document.forms['form-pendaftaran'];
      const btnKirim = document.querySelector('.btn-kirim');
      const btnLoading = document.querySelector('.btn-loading');
      const myAlert = document.querySelector('.my-alert');

      form.addEventListener('submit', (e) => {
        e.preventDefault();
        // Ketika tombol submit di klik
        // Tampilkan tombol loading, dan hilangkan tombol kirim
        btnLoading.classList.toggle('d-none');
        btnKirim.classList.toggle('d-none');
        fetch(scriptURL, { method: 'POST', body: new FormData(form) })
          .then((response) => {
            // Tampilkan tombol kirim, dan hilangkan tombol loading
            btnLoading.classList.toggle('d-none');
            btnKirim.classList.toggle('d-none');
            // Tampilkan alert
            myAlert.classList.toggle('d-none');
            // Reset form
            form.reset();        
            console.log('Success!', response);
          })
          .catch((error) => console.error('Error!', error.message));
      });
    </script>
    <!-- Form pelayanan akhir -->
  </body>
</html>