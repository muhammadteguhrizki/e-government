<?php
      include'koneksi.php';
      session_start();

      if( isset($_POST['login']) ){
        $username = htmlspecialchars($_POST['username']);
        $password = md5(htmlspecialchars($_POST['password']));

        $sql = "SELECT * FROM admin WHERE username = '$username' AND password = '$password'";
        $query = mysqli_query($koneksi, $sql);
        $cocokUntukLogin = mysqli_num_rows($query);

        if ( $cocokUntukLogin == 1 ){
            $_SESSION['usr'] = mysqli_fetch_assoc($query);
            // Jika ada data user 
            echo "<script>alert('Anda berhasil login');</script>";
            echo "<script>location='index.php';</script>";
        }else{
            $message = "Gagal login, pastikan username & password benar";  
        }
    } 
?>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Login Sistem E-Government Kecamatan Weleri</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link href="../asset/logo_kendal.png" rel="icon">
    

</head>
<body class="bg-gradient-primary">
    <div class="container">
        <!-- Outer Row -->
        <div class="col text-center mt-5">
            <img src="../asset/logo_kendal.png" alt="Kabupaten Kendal">
            </div>
        <div class="row justify-content-center">
                <div class="card o-hidden border-1 shadow-lg">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Login Admin</h1>
                                    </div>
                                    <!-- Form Login -->
                                    <form action="" method="POST" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <input type="username" class="form-control form-control-user"
                                                id="InputUsername" aria-describedby="emailHelp"
                                                placeholder="Username" name="username" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                id="InputPassword" placeholder="Password" name="password" required>
                                        </div>
                                    <div class="text-center">
                                    <div class="text-danger mb-2"><?php if(isset($message)) { echo $message; } ?></div>  
                                      <button class="btn btn-primary" type="submit" name="login">Login</button> <br>
                                    </div>
                                    <div class="text-center mt-3">  
                                      <a href="../index.php"><i class="bi bi-arrow-left"></i> Kembali Ke Halaman Kecamatan Weleri.</a>
                                    </div>
                                    </form>
                                    <!-- Form Login Akhir -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>
</html>