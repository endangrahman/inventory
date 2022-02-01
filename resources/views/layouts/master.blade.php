<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>AdminLTE 3 | @yield('title')</title>
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{asset('themes/plugins/fontawesome-free/css/all.min.css')}}">
  <!-- SweetAlert2 -->
  <link rel="stylesheet" href="{{asset('themes/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css')}}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{asset('themes/dist/css/adminlte.min.css')}}">
  <meta name="csrf-token" content="{{ csrf_token() }}">
</head>

<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#" aria-expanded="false"><i class="far fa-user-circle mr-2"></i>{{auth()->user()->name}}</a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right" style="left: inherit; right: 0px;">
          <a href="#" class="dropdown-item"><i class="fas fa-key mr-2"></i>Ubah Password</a>
          <div class="dropdown-divider"></div>
          <a href="{{route('logout')}}" class="dropdown-item"><i class="fas fa-sign-out-alt mr-2"></i>Logout</a>
        </div>
      </li>

    </ul>
  </nav>
  <!-- /.navbar -->
  
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
      <img src="{{asset('themes/dist/img/AdminLTELogo.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item">
            <a href="{{route('dashboard')}}" class="nav-link"><i class="nav-icon fas fa-tachometer-alt"></i><p>Dashboard</p></a>
          </li>
          
          {{-- MASTER DATA --}}
          @if(auth()->user()->role_id == 1)
              <li class="nav-header">MASTER DATA</li>
              <li class="nav-item">
                  <a href="{{route('user')}}" class="nav-link"><i class="nav-icon fas fa-user-md mr-2"></i><p>User</p></a> 
              </li>
              <li class="nav-item">
                <a href="{{route('user-role')}}" class="nav-link"><i class="nav-icon fas fa-user mr-2"></i><p>User Role</p></a> 
            </li>
              <li class="nav-item">
                  <a href="#" class="nav-link"><i class="nav-icon fas fa-medkit mr-2"></i><p>Produk<i class="right fas fa-angle-left"></i></p></a>
                  <ul class="nav nav-treeview">
                      <li class="nav-item">
                          <a href="{{route('kategori-produk')}}" class="nav-link"><i class="far fa-dot-circle mr-2"></i><p>Kategori Produk</p></a>
                      </li>
                      <li class="nav-item">
                          <a href="{{route('sumber-produk')}}" class="nav-link"><i class="far fa-dot-circle mr-2"></i><p>Sumber Produk</p></a>
                      </li>
                      <li class="nav-item">
                          <a href="{{route('produk')}}" class="nav-link"><i class="far fa-dot-circle mr-2"></i><p>Daftar Produk</p></a>
                      </li>
                  </ul>
              </li>
              <li class="nav-item">
                  <a href="{{route('supplier')}}" class="nav-link"><i class="nav-icon fas fa-people-carry mr-2"></i><p>Supplier</p></a> 
              </li>
          @endif
          <div class="dropdown-divider"></div>

          {{-- TRANSAKSI --}}
          <li class="nav-header">TRANSAKSI</li>
          @if(auth()->user()->role_id == 3 || auth()->user()->role_id == 1) 
              <li class="nav-item">
                  <a href="{{route('order-produk')}}" class="nav-link"><i class="nav-icon fas fa-edit mr-2"></i><p>Pemesanan Produk</p></a> 
              </li>
              <li class="nav-item">
                  <a href="{{route('terima-produk')}}" class="nav-link"><i class="nav-icon fas fa-arrow-alt-circle-left mr-2"></i><p>Penerimaan Produk</p></a> 
              </li>
              <li class="nav-item">
                  <a href="{{route('kirim-produk')}}" class="nav-link"><i class="nav-icon fas fa-arrow-alt-circle-right mr-2"></i><p>Pengeluaran Produk</p></a> 
              </li>
          @endif
          
          @if(auth()->user()->role_id == 2 || auth()->user()->role_id == 1) 
              <li class="nav-item">
                  <a href="{{route('terimaresep')}}" class="nav-link"><i class="nav-icon fas fa-copy mr-2"></i><p>Penerimaan Resep</p></a> 
              </li>
          @endif
          <div class="dropdown-divider"></div>

          {{-- INFORMASI --}}
          <li class="nav-header">INFORMASI</li>
          <li class="nav-item">
              <a href="{{route('info-stok')}}" class="nav-link"><i class="nav-icon fas fa-layer-group mr-2"></i><p>Data Stok Produk</p></a> 
          </li>
          <li class="nav-item">
              <a href="{{route('info-harga')}}" class="nav-link"><i class="nav-icon fas fa-dollar-sign mr-2"></i><p>Data Harga Produk</p></a> 
          </li>
          <li class="nav-item">
              <a href="{{route('info-lokasi')}}" class="nav-link"><i class="nav-icon fas fa-map-marker-alt mr-2"></i><p>Data Lokasi Produk</p></a> 
          </li>
          <div class="dropdown-divider"></div>
          
          {{-- LAPORAN --}}
          <li class="nav-header">LAPORAN</li>
          @if(auth()->user()->role_id == 3 || auth()->user()->role_id == 1) 
              <li class="nav-item">
                  <a href="#" class="nav-link"><i class="nav-icon fas fa-pen mr-2"></i><p>Pemesanan Produk</p></a> 
              </li>
              <li class="nav-item">
                  <a href="#" class="nav-link"><i class="nav-icon fas fa-plus-circle mr-2"></i><p>Penerimaan Produk</p></a> 
              </li>
              <li class="nav-item">
                  <a href="#" class="nav-link"><i class="nav-icon fas fa-minus-circle mr-2"></i><p>Pengeluaran Produk</p></a> 
              </li>
          @endif
          
          @if(auth()->user()->role_id == 2 || auth()->user()->role_id == 1)
              <li class="nav-item">
                  <a href="#" class="nav-link"><i class="nav-icon fas fa-receipt mr-2"></i><p>Penerimaan Resep</p></a> 
              </li>
          @endif
          
          <li class="nav-item">
              <a href="{{route('kartustok')}}" class="nav-link"><i class="nav-icon fas fa-cubes mr-2"></i><p>Kartu Stok</p></a> 
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid"> 
        <h5>@yield('content-header')</h5>
      </div>
    </section>
    <section class="content">
      <div class="container-fluid"> 
        @yield('main-content')
      </div>
    </section>
  </div>

  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.1.0
    </div>
    <strong>Copyright &copy; {{date('Y')}} <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="{{asset('themes/plugins/jquery/jquery.min.js')}}"></script>
<!-- Bootstrap 4 -->
<script src="{{asset('themes/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<!-- SweetAlert2 -->
<script src="{{asset('themes/plugins/sweetalert2/sweetalert2.min.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{asset('themes/dist/js/adminlte.min.js')}}"></script>
<!-- AdminLTE for demo purposes -->
<script src="{{asset('themes/dist/js/demo.js')}}"></script>
{{-- Jquery Validation --}}
<script src="{{asset('themes/plugins/jquery-validation/jquery.validate.min.js')}}"></script>

@stack('custom-scripts')
</body>
</html>
