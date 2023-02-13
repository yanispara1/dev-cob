<?php
if (!function_exists('check_login_user')) {
  function check_login_user()
  {
    $ci = get_instance();
    if ($ci->session->userdata('is_user_login') != TRUE) {

      $array_items = array('user_id', 'user_type', 'user_name', 'user_email', 'user_phone', 'user_cip', 'user_dni', 'is_user_login');

      $ci->session->unset_userdata($array_items);

      redirect(base_url());
    }
  }
}

if (!function_exists("fecha")) {
  function fecha($fecha)
  {
    $dia = substr($fecha, 8, 2);
    $mes = substr($fecha, 5, 2);
    $anio = substr($fecha, 0, 4);
    switch ($mes) {
      case '01':
        $mes = "Enero";
        break;
      case '02':
        $mes = "Febrero";
        break;
      case '03':
        $mes = "Marzo";
        break;
      case '04':
        $mes = "Abril";
        break;
      case '05':
        $mes = "Mayo";
        break;
      case '06':
        $mes = "Junio";
        break;
      case '07':
        $mes = "Julio";
        break;
      case '08':
        $mes = "Agosto";
        break;
      case '09':
        $mes = "Septiembre";
        break;
      case '10':
        $mes = "Octubre";
        break;
      case '11':
        $mes = "Noviembre";
        break;
      case '12':
        $mes = "Diciembre";
        break;
    }
    $fecha = $dia . " de " . $mes . " de " . $anio;
    return $fecha;
  }
}

function generate_string($input, $strength)
{
  $input_length = strlen($input);
  $random_string = '';
  for ($i = 0; $i < $strength; $i++) {
    $random_character = $input[mt_rand(0, $input_length - 1)];
    $random_string .= $random_character;
  }

  return $random_string;
}

if (!function_exists("qr")) {
  function qr($url, $url2, $id)
  {
    require('phpqrcode/qrlib.php');

    QRcode::png($url2, $url, QR_ECLEVEL_L, 3, 0);
  }
}

if (!function_exists('get_random_password')) {
  function get_random_password($chars_min = 6, $chars_max = 8, $use_upper_case = false, $include_numbers = false, $include_special_chars = false)
  {
    $length = rand($chars_min, $chars_max);
    $selection = 'aeuoyibcdfghjklmnpqrstvwxz';
    if ($include_numbers) {
      $selection .= "1234567890";
    }
    if ($include_special_chars) {
      $selection .= "!@\"#$%&[]{}?|";
    }

    $password = "";
    for ($i = 0; $i < $length; $i++) {
      $current_letter = $use_upper_case ? (rand(0, 1) ? strtoupper($selection[(rand() % strlen($selection))]) : $selection[(rand() % strlen($selection))]) : $selection[(rand() % strlen($selection))];
      $password .=  $current_letter;
    }

    return $password;
  }
}

if (!function_exists('check_user')) {
  function check_user()
  {
    $ci = get_instance();

    if ($ci->session->userdata('user_type') != 1) {

      return true;
    }
  }
}
function viewExtension($extension, $name, $id_frwrd)
{
  $files_ext = [
    [
      'pdf',
      'fa fa-file-pdf-o text-danger'
    ],
    [
      'zip',
      'fa fa-file-zip-o text-primary'
    ],
    [
      'rar',
      'fa fa-file-zip-o text-primary'
    ],
    [
      'ppt',
      'fa fa-file-powerpoint-o text-warning'
    ],
    [
      'xlsx',
      'fa fa-file-excel-o text-success'
    ],
    [
      'xls',
      'fa fa-file-excel-o text-success'
    ],
    [
      'docx',
      'fa fa-file-word-o text-info'
    ],
    [
      'txt',
      'fa fa-file-code-o text-primary'
    ],
  ];

  $files_img = [
    [
      'jpg',
    ],
    [
      'png',
    ],
    [
      'jpeg',
    ],
    [
      'svg',
    ],
  ];



  foreach ($files_ext as list($ext, $font)) {
    if ($extension == $ext) {
      echo '<i class="' . $font . '"></i>';
    } else {
      foreach ($files_img as list($ext_img)) {
        if ($extension == $ext_img) {
          echo '<img src="">';
        }
      }
    }
  }
}
