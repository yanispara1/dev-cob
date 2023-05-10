<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<?= base_url(); ?>assets/images/log-c.png">

    <title><?= $title ?> | COPERE</title>
    <!-- This page CSS -->


    <!-- chartist CSS -->
    <?php
    for ($i = 0; $i < count($links); $i++) {
        echo $links[$i];
    }
    ?>



    <!--Toaster Popup message CSS -->
    <link href="<?= base_url(); ?>assets/node_modules/toast-master/css/jquery.toast.css" rel="stylesheet">

    <link href="<?= base_url(); ?>dist/css/style.min.css" rel="stylesheet">
    <!-- Dashboard 1 Page CSS -->

    <link href="<?= base_url(); ?>dist/css/pages/footable-page.css" rel="stylesheet">
    <link href="<?= base_url(); ?>assets/node_modules/footable/css/footable.bootstrap.min.css" rel="stylesheet">
    <link href="<?= base_url(); ?>dist/css/pages/footable-page.css" rel="stylesheet">
    <link href="<?= base_url(); ?>dist/css/pages/contact-app-page.css" rel="stylesheet">



    <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>assets/node_modules/datatables.net-bs4/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>assets/node_modules/datatables.net-bs4/css/responsive.dataTables.min.css">

</head>