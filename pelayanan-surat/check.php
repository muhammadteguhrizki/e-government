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
  <body class="bg-primary">
    <?php
    $cari_error="";
    if($_SERVER['REQUEST_METHOD']=='POST'){
      if(empty(trim($_POST['cari']))){
        $cari_error="Masukan No.Pendaftaran untuk pengecekan status pengajuan";
      }else{
        $cari=mysqli_real_escape_string($koneksi,$_POST['cari']);
      }
      if(empty($cari_error)){
        $sql="SELECT * FROM pelayanan_surat WHERE no_pendaftar LIKE '$cari'";
        $perintah=mysqli_query($koneksi, $sql);
      }
    }                         
  ?>
    <div class="container">
      <div class="row d-flex align-items-center justify-content-center" style="height: 100vh">
        <div class="col-lg-6">
          <div class="card shadow">
            <h5 class="card-header">Masukan No.Pendaftaran / No.Pengajuan Surat</h5>
            <div class="card-body">
              <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data">
                <input type="text" class="form-control" id="cari" name="cari" placeholder="SRTxxxxxxxx" />
                <div>
                  <span><?php echo $cari_error; ?></span>
                  <?php
                    if(!empty($perintah)){
                     if(mysqli_num_rows($perintah)>0){
            
                      while($row=mysqli_fetch_array($perintah)){
                        echo '
                          <h5 class="mt-3">Status Pengajuan Anda : '.$row['progres'].'</h5>
                          <p>Atas Nama '.$row['nama'].'</p>
                        ';
                      }
                     
                    }else{
                      echo "Maaf No.Pendaftaran yang anda cari tidak ditemukan!";
                    }
                  }
              ?>
                </div>
            </div>
                <div class="card-footer text-end">
                 <a href="../chatbot.php" class="btn btn-secondary">Close</a>
                  <button type="submit" value="cari" class="btn btn-primary">Check</button>
                </div>
              </form>    
          </div>
        </div>
      </div>
    </div>
    <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
