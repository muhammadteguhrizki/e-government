<?php

include'koneksi.php';
session_start();
if (!isset ($_SESSION['usr']) )
{
    echo"<script>alert('Anda harus login!');</script>";
    echo"<script>location='login.php';</script>";
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

    <title>Sistem E-Government Kecamatan Weleri</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="../asset/logo_kendal.png" rel="icon">

</head>

<?php
 include 'koneksi.php';
?>
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.php">
                <div class="sidebar-brand-icon">
                    <img src="../asset/logo_kendal.png" style="width: 40px;" alt="logo">
                </div>
                <div class="sidebar-brand-text mx-3"><small>E-Government</small></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="index.php">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Heading -->
           

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="bi bi-card-list"></i>
                    <span>Data E-Government</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="informasi.php">Informasi</a> 
                        <a class="collapse-item" href="berita.php">Berita</a>
                        <a class="collapse-item" href="galeri.php">Galeri</a>
                    </div>
                </div>
            </li>

            <hr class="sidebar-divider my-0">

            <li class="nav-item">
                <a class="nav-link" href="karyawan.php">
                <i class="bi bi-file-person"></i>
                    <span>Data Karyawan</span></a>
            </li>


            <hr class="sidebar-divider my-0">

            <li class="nav-item">
                <a class="nav-link" href="pelayanan_surat.php">
                <i class="bi bi-mailbox"></i>
                    <span>Pelayanan Surat</span></a>
            </li>

           
            
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>   

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Admin</span>
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="admin.php">
                                <i class="bi bi-gear fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Admin Setting
                                </a>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                  <!-- Page Heading -->
                  <h1 class="h3 mb-2 text-gray-800">Tabel Pendaftar</h1>
                   

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                       
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead class="text-center">
                                        <tr>
                                            <th>#</th>
                                            <th>No.Pendaftaran</th>
                                            <th>Nama</th>
                                            <th>Jenis Surat</th>                                         
                                            <th>Tanggal Pengajuan</th>                                         
                                            <th>Keterangan Berkas</th>  
                                            <th>Status</th>
                                            <th>Aksi</th>  
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php 
                                        $no = 1;
                                        $sql = mysqli_query($koneksi, "SELECT * FROM pelayanan_surat ORDER BY tanggal_pengajuan DESC");
                                        
                                        while($row = mysqli_fetch_array($sql)){
                                    ?>
                                        <tr>
                                            <td class="text-center"><?php echo $no++; ?></td>
                                            <td><?php echo $row['no_pendaftar']; ?></td> 
                                            <td><?php echo $row['nama']; ?></td>                                         
                                            <td><?php echo $row['jenis_surat']; ?></td> 
                                            <td><?php echo date('d-m-Y', strtotime($row['tanggal_pengajuan'])); ?></td> 
                                            <td><?php echo $row['keterangan']; ?></td> 
                                            <td class="text-center"><?php echo $row['progres']; ?></td>
                                            <th class="text-center">
                                                <a href="#" type="button" class="btn btn-outline-primary mb-2" data-toggle="modal" data-target="#detailModal<?php echo $row['no_pendaftar']; ?>"><i class="bi bi-info-square"></i></a>
                                                <br>
                                                <a href="delete_pelayanan_surat.php?id=<?php echo $row['no_pendaftar']; ?>" class="btn btn-danger"><i class="bi bi-trash"></i></a>
                                            </th>
                                         <!-- modal detail -->
                                         <div class="modal fade" id="detailModal<?php echo $row['no_pendaftar']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                                            aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel"><?php echo $row['nama']; ?></h5>
                                                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">×</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <ul class="list-group list-group-flush">
                                                            <li class="list-group-item"><strong>No.Pendaftaran : </strong><?php echo $row['no_pendaftar']; ?></li>                        
                                                            <li class="list-group-item"><strong>Jenis Surat : </strong><?php echo $row['jenis_surat']; ?></li>                        
                                                            <li class="list-group-item"><strong>Alamat : </strong><?php echo $row['alamat']; ?></li>                        
                                                            <li class="list-group-item"><strong>Jenis Kelamin : </strong><?php echo $row['jenis_kelamin']; ?></li>                        
                                                            <li class="list-group-item"><strong>No.Telepon : </strong><?php echo $row['no_telepon']; ?></li>                        
                                                            <li class="list-group-item"><strong>Email : </strong><?php echo $row['email']; ?></li>                        
                                                            <li class="list-group-item"><strong>Keterangan : </strong><?php echo $row['keterangan']; ?></li>                        
                                                            <li class="list-group-item"><strong>Status : </strong><?php echo $row['progres']; ?> <a href="update_pelayanan_surat.php?id=<?php echo $row['no_pendaftar']; ?>"><i class="bi bi-pencil-square text-lg"></i></a></li>                        
                                                        </ul>                                                          
                                                    </div>
                                                    <span class="text-center mb-2"><?php echo date('d-m-Y', strtotime($row['tanggal_pengajuan'])); ?></span>
                                                </div>
                                            </div>
                                         </div>
                                         <!-- modal detail end -->
                                        </tr>
                                    <?php
                                        }
                                    ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Kecamatan Weleri 2022</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Pilih "Logout" di bawah jika Anda siap untuk mengakhiri sesi Anda saat ini.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="logout.php">Logout</a>
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
    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

</body>

</html>