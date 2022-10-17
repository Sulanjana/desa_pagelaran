<html>

<head>
    <meta charset="urf-8">
    <link rel="stylesheet" href="https://stackpath.bootsrapcdn.com/bootsrap/4.5.2/css/bootsrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
    <title><?= $title; ?></title>
</head>

<body>

    <div class="container-fluid">
        <!-- Page Heading -->
        <!-- Search form -->

        <h1 class="h3 mb-4 text-gray-800">Pengajuan Surat</h1>

        <div class="card mb-3">
            <div class="card-body">
                <h1 class="h3 mb-4 text-gray-800">SURAT SK BELUM MEMILIKI RUMAH</h1>
                <div class="table-responsive">
                    <table class="table table-striped table bordered mydatatable" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>

                                <th scope="col">No</th>
                                <th scope="col">ID Surat</th>
                                <th scope="col">Jenis Pengajuan</th>
                                <th scope="col">Pengaju</th>
                                <th scope="col">Tanggal</th>
                                <th scope="col">Status</th>
                                <th scope="col" class="text-center">Aksi</th>

                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i = 1;
                            foreach ($sk_bmr as $sk_bmr) : ?>
                                <tr>
                                    <th scope="col"><?= $i++; ?></th>
                                    <th scope="col"><?= $sk_bmr['id_surat_bmr']; ?></th>
                                    <th scope="col"><?= $sk_bmr['jenis_surat']; ?></th>
                                    <th scope="col"><?= $sk_bmr['nama']; ?></th>
                                    <th scope="col"><?= $sk_bmr['tgl_ajukan_surat']; ?></th>
                                    <th scope="col" value="<?= $sk_bmr['status_surat']; ?>"><span class="label label-<?= ($sk_bmr['status_surat'] == 'Diterima') ? 'success' : (($sk_bmr['status_surat'] == 'Ditolak' || $sk_bmr['status_surat'] == 'Dibatalkan') ? 'danger' : 'warning') ?>">
                                            <?= $sk_bmr['status_surat']; ?> <i class="fas fa-exclamation-circle"></i>
                                        </span>
                                    </th>
                                    <?php
                                    if ($sk_bmr['status_surat'] == 'Pending') : ?>
                                        <th scope="col" id="acc_surat">
                                            <a href="<?= base_url('Tambah_warga/update_sk_bmr_terima/' . $sk_bmr['id_surat_bmr']) ?>" class="btn btn-success m-1" name="status_surat" id="status_surat"><u> Terima</u>
                                                <a href="<?= base_url('Tambah_warga/update_sk_bmr_tolak/' . $sk_bmr['id_surat_bmr']) ?>" class=" btn btn-danger m-1" name="status_surat" id="status_surat"> <u> Tolak</u>
                                        </th>
                                    <?php elseif ($sk_bmr['status_surat'] == 'Diterima') : ?>
                                        <th scope="col" id="acc_surat">
                                            <a target="_blank" href="<?= base_url('/Cetak_SK/sk_bmr/' . $sk_bmr['id_surat_bmr']); ?>" class="btn btn-success m-1 " name="print" id="print"> Print <i class="fas fa-print"></i>
                                        </th>
                                    <?php else : ?>
                                        <th></th>
                                    <?php endif; ?>
                                </tr>
                            <?php endforeach; ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <script src="https://stachpath.bootsrapcdn.com/bootsrap/4.5.2/js/bootsrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
    <script>
        $('.mydatatable').DataTable();
    </script>



</body>

</html>